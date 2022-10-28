import 'package:flutter/material.dart';
import '../themes/theme.dart';

class CustomCardTypeTwo extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardTypeTwo({
    super.key,
    required this.imageUrl,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 10,
      child: Column(children: [
        FadeInImage(
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            image: NetworkImage(imageUrl)),
        if (name != null)
          (Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name ?? 'Sin titulo'),
          ))
      ]),
    );
  }
}
