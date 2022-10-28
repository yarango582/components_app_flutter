import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTypeOne(),
            CustomCardTypeOne(),
            CustomCardTypeTwo(
                imageUrl:
                    'https://i.pinimg.com/originals/cf/9f/96/cf9f9627cdca0cad7bb294dea06d6554.png',
                name: 'Templo 1'),
            CustomCardTypeTwo(
              imageUrl:
                  'https://cdnb.artstation.com/p/assets/images/images/002/075/641/large/martin-sabran-volcanolandscape-mp.jpg?1456905555',
            )
          ],
        ));
  }
}
