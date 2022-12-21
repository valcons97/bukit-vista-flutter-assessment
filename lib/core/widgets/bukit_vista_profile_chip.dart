import 'package:flutter/material.dart';

import '../../features/booking_page/model/enums.dart';

/// Chip for profile thats indicating status like
/// - repeater
/// - backpacker
/// - etc
class BukitVistaProfileChip extends StatelessWidget {
  const BukitVistaProfileChip({
    super.key,
    required this.profileStatus,
  });

  final ProfileStatus profileStatus;

  @override
  Widget build(BuildContext context) {
    switch (profileStatus) {
      case ProfileStatus.repeater:
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
          ),
          child: Row(
            children: const [
              Icon(
                Icons.star,
                size: 14,
                color: Colors.green,
              ),
              SizedBox(width: 4),
              Text(
                'Repeater',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        );

      case ProfileStatus.backpacker:
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: const BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          child: Row(
            children: const [
              Icon(Icons.backpack),
              SizedBox(width: 4),
              Text(
                'Backpacker',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
        );

      case ProfileStatus.unknown:
        return Container();
    }
  }
}
