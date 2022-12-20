import 'package:flutter/material.dart';

import '../../features/booking_page/model/enums.dart';

class BukitVistaProfileChip extends StatelessWidget {
  const BukitVistaProfileChip({
    super.key,
    required this.profileStatus,
  });

  final ProfileStatus profileStatus;

  @override
  Widget build(BuildContext context) {
    // TODO : continue
    /// Return widget based on profile status
    switch (profileStatus) {
      case ProfileStatus.repeater:
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: const BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          child: Row(
            children: [
              const Icon(Icons.star),
            ],
          ),
        );

      case ProfileStatus.backpacker:
        return Row(
          children: [
            Icon(Icons.star),
          ],
        );
    }
  }
}
