import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BukitVistaListtile extends StatelessWidget {
  const BukitVistaListtile({
    super.key,
    required this.date,
    required this.totalReview,
  });

  final DateTime date;
  final int totalReview;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Container(
                  color: const Color.fromARGB(255, 57, 160, 64),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8),
                    child: Text(
                      DateFormat('dd\nMMM').format(date.toLocal()),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.chat),
                    const SizedBox(width: 4),
                    Text(totalReview.toString()),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
