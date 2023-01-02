import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../widgets.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? const PopUpMenu(
            menuList: [
              PopupMenuItem(
                enabled: false,
                child: SearchField(),
              )
            ],
            icon: MenuIcon(
              svgString: IconConstant.searchWeb,
            ),
          )
        : Container();
  }
}
