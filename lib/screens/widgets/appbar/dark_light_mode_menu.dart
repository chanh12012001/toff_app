import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toff_app/constants/constants.dart';
import 'package:toff_app/provider/theme_provider.dart';
import '../widgets.dart';

class DarkLightModeMenu extends StatefulWidget {
  const DarkLightModeMenu({super.key});

  @override
  State<DarkLightModeMenu> createState() => _DarkLightModeMenuState();
}

class _DarkLightModeMenuState extends State<DarkLightModeMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider themeProvider, child) {
        return PopUpMenu(
          menuList: const [],
          icon: MenuIcon(
            onTap: () {
              setState(() {
                themeProvider.changeTheme();
              });
            },
            svgString: themeProvider.getTheme == lightTheme
                ? IconConstant.light
                : IconConstant.dark,
          ),
        );
      },
    );
  }
}
