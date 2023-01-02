import 'dart:convert';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:toff_app/provider/theme_provider.dart';
import '../../../constants/constants.dart';
import '../../../models/models.dart';
import '../widgets.dart';

class CartMenu extends StatefulWidget {
  const CartMenu({super.key});

  @override
  State<CartMenu> createState() => _CartMenuState();
}

class _CartMenuState extends State<CartMenu> {
  List<ProductModel> products = [];
  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("assets/jsons/product.json")
        .then((value) {
      setState(() {
        List toeicPartsJson = json.decode(value);
        products = toeicPartsJson
            .map((product) => ProductModel.fromJson(product))
            .toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider themeProvider, child) {
        return PopUpMenu(
          menuList: [
            PopupMenuItem(
              enabled: false,
              child: SizedBox(
                  height: 50,
                  width: double.maxFinite,
                  child: Center(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Stack(
                        children: [
                          Transform.rotate(
                            angle: -45 * 3.14 / 180,
                            child: SizedBox(
                              child: SvgPicture.asset(
                                IconConstant.bag,
                                width: 55,
                                height: 55,
                                color: themeProvider.getTheme.iconTheme.color!
                                    .withOpacity(0.1),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 5,
                            child: Text(
                              "Cart",
                              style:
                                  themeProvider.getTheme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              enabled: false,
              child: Container(
                width: double.maxFinite,
                constraints: const BoxConstraints(
                  minHeight: 100,
                  maxHeight: 300,
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return products.last != products[index]
                        ? _cartProduct(products[index])
                        : Column(
                            children: [
                              _cartProduct(products[index]),
                              const Divider(),
                              _paymentButton(),
                            ],
                          );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
            ),
          ],
          icon: Badge(
            badgeContent: Text(
              "3",
              style: themeProvider.getTheme.textTheme.titleSmall!
                  .copyWith(color: Colors.white),
            ),
            badgeColor: kPrimaryColor,
            child: const MenuIcon(
              svgString: IconConstant.cart,
            ),
          ),
        );
      },
    );
  }

  Widget _cartProduct(ProductModel product) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(48), // Image radius
              child: Image.network(product.imageUrl!, fit: BoxFit.cover),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.productName!,
                style: themeProvider.getTheme.textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              Text(
                product.price!,
                style: themeProvider.getTheme.textTheme.titleMedium!
                    .copyWith(color: kPrimaryColor),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 237, 238, 239),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      children: [
                        buildButton(
                          icon: Icons.add,
                          press: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "2",
                            style: themeProvider.getTheme.textTheme.titleMedium,
                          ),
                        ),
                        buildButton(
                          icon: Icons.remove,
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 70),
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconConstant.edit,
                        width: 16,
                        height: 16,
                        color: themeProvider.getTheme.iconTheme.color,
                      ),
                      const SizedBox(width: 2),
                      SvgPicture.asset(
                        IconConstant.delete,
                        width: 16,
                        height: 16,
                        color: themeProvider.getTheme.iconTheme.color,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _paymentButton() {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Total: \$100.00",
          style: themeProvider.getTheme.textTheme.titleMedium!
              .copyWith(fontSize: 17),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6362E7)),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Checkout',
              style: themeProvider.getTheme.textTheme.titleMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButton({required IconData icon, required Function()? press}) {
    return GestureDetector(
      onTap: press,
      child: Icon(
        icon,
        size: 16,
      ),
    );
  }
}
