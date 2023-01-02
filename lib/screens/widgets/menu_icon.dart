import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../constants/constants.dart';
import '../../provider/providers.dart';
import 'widgets.dart';

class MenuIcon extends StatelessWidget {
  final String svgString;
  final Function()? onTap;
  const MenuIcon({
    super.key,
    this.onTap,
    required this.svgString,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer(builder: ((context, ThemeProvider themeProvider, child) {
      return Responsive.isDesktop(context)
          ? OnHover(
              builder: (isHovered) {
                return GestureDetector(
                  onTap: onTap,
                  child: SizedBox(
                    width: size.width * 0.06,
                    child: SvgPicture.asset(
                      svgString,
                      color: isHovered
                          ? kPrimaryColor
                          : themeProvider.getTheme.iconTheme.color,
                    ),
                  ),
                );
              },
            )
          : GestureDetector(
              onTap: onTap,
              child: SvgPicture.asset(
                svgString,
                color: themeProvider.getTheme.iconTheme.color,
              ),
            );
    }));
  }
}
