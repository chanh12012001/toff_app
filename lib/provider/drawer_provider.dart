import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isOpenDrawer = true;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  bool get isOpenDrawer => _isOpenDrawer;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void setOpenDrawerStatus(value) {
    _isOpenDrawer = value;
    notifyListeners();
  }
}
