import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/constants.dart';
import '../provider/providers.dart';
import 'widgets/widgets.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: themeProvider.getTheme.scaffoldBackgroundColor,
      drawer: const DrawerMenu(),
      key: context.read<DrawerProvider>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // sidebar
            if (Responsive.isDesktop(context))
              Consumer(
                builder: ((context, DrawerProvider drawerProvider, child) {
                  return drawerProvider.isOpenDrawer
                      ? const SizedBox(
                          width: 280,
                          child: DrawerMenu(),
                        )
                      : Container();
                }),
              ),
            // appBar and body
            Flexible(
              child: Column(
                children: [
                  const BuildAppBar(),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
