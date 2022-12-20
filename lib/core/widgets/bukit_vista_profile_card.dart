import 'package:flutter/material.dart';

class BukitVistaProfileCard extends StatelessWidget {
  const BukitVistaProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO : remove hardcoded
    return Row(
      children: [
        CircleAvatar(),
        Column(
          children: [
            Text('Cleo Kimberly'),
            Text('Melbourne, Australia'),
            Text('Cleo Kimberly'),
          ],
        )
      ],
    );
  }
}
