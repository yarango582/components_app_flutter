import 'package:flutter/material.dart';
import 'package:components_app/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptionsModel>[
    MenuOptionsModel(
        route: 'listview1',
        name: 'ListView type 1 Screen',
        icon: Icons.list_outlined,
        screen: const Listview1Screen()),
    MenuOptionsModel(
        route: 'listview2',
        name: 'ListView type 2 Screen',
        icon: Icons.list_outlined,
        screen: const Listview2Screen()),
    MenuOptionsModel(
        route: 'card',
        name: 'Card Screen',
        icon: Icons.card_membership_outlined,
        screen: const CardScreen()),
    MenuOptionsModel(
        route: 'alert',
        name: 'Alert Screen',
        icon: Icons.add_alert_rounded,
        screen: const AlertScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      return const AlertScreen();
    });
  }
}
