import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((opt) => ListTile(
                    title: Text(opt),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primary),
                  ))
              .toList()
        ],
      ),
    );
  }
}
