import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../widgets.dart';

class ZoomMenu extends StatelessWidget {
  const ZoomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? const PopUpMenu(
            menuList: [],
            icon: MenuIcon(
              svgString: IconConstant.zoom,
            ),
          )
        : Container();
  }
}
