import 'package:flutter/material.dart';

import '../../features/booking_page/index.dart';

/// Chip for showing status of the room
class BukitVistaChip extends StatelessWidget {
  const BukitVistaChip({
    super.key,
    required this.status,
  });

  /// Receive room status to check the widget shown
  final RoomStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: status == RoomStatus.notReady
            ? Colors.amber[700]
            : Colors.green[700],
      ),
      child: Row(
        children: [
          Icon(
            status == RoomStatus.notReady
                ? Icons.notifications_none
                : Icons.check,
            color: Colors.white,
            size: 14,
          ),
          const SizedBox(width: 4),
          Text(
            status == RoomStatus.notReady
                ? 'check room readiness'.toUpperCase()
                : 'ready'.toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    );
  }
}
