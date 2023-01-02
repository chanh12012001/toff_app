import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../constants/constants.dart';
import '../../models/models.dart';
import '../../provider/providers.dart';
import 'widgets.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider themeController, child) {
        return Drawer(
          backgroundColor:
              themeController.getTheme.backgroundColor.withAlpha(230),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _headerDrawer(),
                _contentMenu(),
                _footerDrawer(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _headerDrawer() {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    return Container(
      width: double.maxFinite,
      height: 80,
      alignment: Alignment.centerLeft,
      color: themeProvider.getTheme.backgroundColor,
      padding: const EdgeInsets.only(left: 10),
      child: Image.asset(
        themeProvider.getTheme == lightTheme
            ? IconConstant.appLogoLight
            : IconConstant.appLogoDark,
        width: 100,
      ),
    );
  }

  Widget _footerDrawer() {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    return Container(
      color: themeProvider.getTheme.backgroundColor,
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: SizedBox(
          height: 270,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                bottom: 30,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF6362E7),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: 220,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Need Help ?",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.05,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Raise ticket at",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.05,
                          color: Color.fromARGB(255, 216, 214, 214),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "\"support@pixelstrap.com\"",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.05,
                          color: Color.fromARGB(255, 216, 214, 214),
                        ),
                      ),
                      SizedBox(height: Responsive.isMobile(context) ? 10 : 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFC401),
                        ),
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(
                            fontFamily: "Roboto",
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: Responsive.isMobile(context) ? 10 : 20),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Image.asset(
                  "assets/images/img_need_help.png",
                  width: 110,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _contentMenu() {
    return Flexible(
      child: ListView(
        children: tiles.map(buildTile).toList(),
      ),
    );
  }

  Widget buildTile(Tile tile) {
    if (tile.tiles.isEmpty) {
      return _subExpansionTile(tile);
    } else {
      List<Widget> tilesListWidget =
          tile.tiles.map((tile) => buildTile(tile)).toList();
      return CustomExpansionTile(
        tile: tile,
        tiles: tilesListWidget,
      );
    }
  }

  Widget _subExpansionTile(Tile tile) {
    return Consumer(
      builder: (context, ThemeProvider themeProvider, child) {
        return ListTile(
          onTap: () {
            //print(tile.title);
          },
          tileColor: themeProvider.getTheme.backgroundColor,
          contentPadding: EdgeInsets.only(left: tile.level == 3 ? 26 : 16),
          title: Text(
            tile.title,
            style: themeProvider.getTheme.textTheme.titleMedium!.copyWith(
              color: isExpanded
                  ? kPrimaryColor
                  : themeProvider.getTheme.textTheme.titleMedium!.color,
            ),
          ),
          leading: SvgPicture.asset(
            tile.iconString!,
            color: isExpanded
                ? kPrimaryColor
                : themeProvider.getTheme.iconTheme.color,
          ),
          trailing: SizedBox(
            width: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                tile.status != ""
                    ? Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: tile.status == "New"
                              ? const Color.fromARGB(255, 185, 214, 246)
                              : tile.status == "Latest"
                                  ? const Color.fromARGB(255, 250, 203, 200)
                                  : const Color.fromARGB(255, 211, 211, 248),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          tile.status!,
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: tile.status == "New"
                                ? Colors.blue
                                : tile.status == "Latest"
                                    ? Colors.red
                                    : const Color(0xFF6362E7),
                          ),
                        ),
                      )
                    : Container(),
                // Icon(Icons.keyboard_arr
                // row_down_outlined),
                Expanded(child: Container()),
              ],
            ),
          ),
        );
      },
    );
  }
}
