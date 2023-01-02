import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toff_app/provider/theme_provider.dart';
import 'package:toff_app/screens/dash_board_screen.dart';
import 'provider/drawer_provider.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //required to use platform channels to call native code.
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DrawerProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeController, child) {
        return MaterialApp(
          title: 'Dashboard',
          debugShowCheckedModeBanner: false,
          theme: themeController.getTheme,
          home: const DashBoardScreen(),
        );
      },
    );
  }
}
