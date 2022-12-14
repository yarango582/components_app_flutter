import 'package:components_app/routes/app_routes.dart';
import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Componentes en flutter')),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(AppRoutes.menuOptions[index].name),
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
