import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants/constants.dart';
import '../../../provider/providers.dart';
import '../widgets.dart';

class AccountMenu extends StatefulWidget {
  const AccountMenu({super.key});

  @override
  State<AccountMenu> createState() => _AccountMenuState();
}

class _AccountMenuState extends State<AccountMenu> {
  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
      menuList: [
        _menuItem(
          title: "My Profile",
          iconData: Icons.person,
        ),
        const PopupMenuDivider(),
        _menuItem(
          title: "My Bag",
          iconData: Icons.mail,
        ),
        const PopupMenuDivider(),
        _menuItem(
          title: "Taskboard",
          iconData: Icons.assessment,
        ),
        const PopupMenuDivider(),
        _menuItem(
          title: "Settings",
          iconData: Icons.settings,
        ),
        const PopupMenuDivider(),
        _menuItem(
          title: "Log Out",
          iconData: Icons.logout,
        ),
      ],
      icon: const MenuIcon(
        svgString: IconConstant.profile,
      ),
    );
  }

  PopupMenuItem<dynamic> _menuItem(
      {required String title, required IconData iconData}) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return PopupMenuItem(
      child: ListTile(
        leading: Icon(
          iconData,
        ),
        title: Text(
          title,
          style: themeProvider.getTheme.textTheme.titleMedium,
        ),
      ),
    );
  }
}
