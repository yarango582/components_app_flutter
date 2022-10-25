import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptionsModel {
  final String route;
  final String name;
  final IconData icon;
  final Widget screen;

  MenuOptionsModel(
      {required this.route,
      required this.name,
      required this.icon,
      required this.screen});
}
