import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../screens/widgets/widgets.dart';
import '../../constants/constants.dart';
import '../../provider/providers.dart';

class BuildAppBar extends StatefulWidget {
  const BuildAppBar({super.key});

  @override
  State<BuildAppBar> createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    DrawerProvider drawerProvider = Provider.of<DrawerProvider>(context);

    return Container(
      color: themeProvider.getTheme.backgroundColor,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Flexible(
            flex: Responsive.isMobile(context) ? 1 : 1,
            child: Row(
              children: [
                GestureDetector(
                  onTap: !Responsive.isDesktop(context)
                      ? context.read<DrawerProvider>().controlMenu
                      : () {
                          drawerProvider.setOpenDrawerStatus(
                              !drawerProvider.isOpenDrawer);
                          setState(() {});
                        },
                  child: SizedBox(
                    width: 70,
                    child: SvgPicture.asset(
                      IconConstant.menuSideBar,
                      color: const Color(0xFF6362E7),
                    ),
                  ),
                ),
                if (!Responsive.isMobile(context))
                  const Expanded(child: SearchField()),
              ],
            ),
          ),
          Flexible(
            flex: Responsive.isMobile(context) ? 3 : 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                DarkLightModeMenu(),
                SearchMenu(),
                CartMenu(),
                BookMarkMenu(),
                NotificationMenu(),
                ZoomMenu(),
                AccountMenu(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
