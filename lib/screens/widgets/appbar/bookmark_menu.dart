import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:toff_app/provider/theme_provider.dart';
import '../../../constants/constants.dart';
import '../widgets.dart';

class BookMarkMenu extends StatefulWidget {
  const BookMarkMenu({super.key});

  @override
  State<BookMarkMenu> createState() => _BookMarkMenuState();
}

class _BookMarkMenuState extends State<BookMarkMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider themeProvider, child) {
        return PopUpMenu(
          menuList: [
            PopupMenuItem(
              enabled: false,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Bookmark",
                        style: themeProvider.getTheme.textTheme.titleLarge,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _bookmarkMenuItem(
                          text: "Forms",
                          iconUrl: IconConstant.form,
                        ),
                        _bookmarkMenuItem(
                          text: "Profile",
                          iconUrl: IconConstant.profile,
                        ),
                        _bookmarkMenuItem(
                          text: "Tables",
                          iconUrl: IconConstant.table,
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text('Add New Bookmark',
                              style: themeProvider
                                  .getTheme.textTheme.titleMedium!
                                  .copyWith(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          icon: const MenuIcon(
            svgString: IconConstant.bookmark,
          ),
        );
      },
    );
  }

  Column _bookmarkMenuItem({required String text, required String iconUrl}) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 237, 238, 239),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(50))),
          child: Responsive.isDesktop(context)
              ? OnHover(
                  builder: (isHovered) {
                    return SvgPicture.asset(
                      iconUrl,
                      color: isHovered
                          ? kPrimaryColor
                          : themeProvider.getTheme.iconTheme.color,
                    );
                  },
                )
              : SvgPicture.asset(
                  iconUrl,
                  color: themeProvider.getTheme.iconTheme.color,
                ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: themeProvider.getTheme.textTheme.titleMedium!
              .copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
