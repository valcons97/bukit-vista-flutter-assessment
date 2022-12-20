import 'package:flutter/material.dart';

class BukitVistaListtile extends StatelessWidget {
  const BukitVistaListtile({
    super.key,
    required this.date,
    required this.totalReview,
  });

  final String date;
  final int totalReview;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                color: Colors.green[900],
                child: Text(date),
              ),
              Row(
                children: [
                  const Icon(Icons.chat),
                  const SizedBox(width: 4),
                  Text(totalReview.toString()),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
