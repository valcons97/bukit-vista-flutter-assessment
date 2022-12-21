import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';

import '../../features/booking_page/index.dart';

class BukitVistaInformationTile extends StatelessWidget {
  const BukitVistaInformationTile({
    super.key,
    required this.leftCollumn,
    this.middleCollumn,
    required this.rightCollumn,
  });

  final Widget leftCollumn;
  final Widget? middleCollumn;
  final Widget rightCollumn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftCollumn,
          middleCollumn ?? Container(),
          rightCollumn,
        ],
      ),
    );
  }

  factory BukitVistaInformationTile.stayingDays({
    required DateTime checkIn,
    required DateTime checkOut,
  }) {
    return BukitVistaInformationTile(
      /// Check in column
      leftCollumn: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Check in',
            style: TextStyle(color: Colors.black45, fontSize: 12),
          ),
          const SizedBox(height: 4),
          Text(
            DateFormat('HH:mm').format(checkIn.toLocal()),
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            DateFormat('MMM dd, yyyy').format(checkIn.toLocal()),
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),

      /// Icon and nights column
      middleCollumn: Column(
        children: [
          const Icon(
            Icons.bedtime_outlined,
            color: Colors.black54,
          ),
          const SizedBox(height: 4),
          Text(
            '${checkOut.difference(checkIn).inDays - 1} Nights',
            style: TextStyle(
              color: Colors.blue[700],
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),

      /// Check out column
      rightCollumn: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'Check out',
            style: TextStyle(color: Colors.black45, fontSize: 12),
          ),
          const SizedBox(height: 4),
          Text(
            DateFormat('HH:mm').format(checkOut.toLocal()),
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            DateFormat('MMM dd, yyyy').format(checkOut.toLocal()),
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  factory BukitVistaInformationTile.bookingInformation({
    required String bookingId,
    required BookingStatus bookingStatus,
    required BuildContext context,
  }) {
    return BukitVistaInformationTile(
      leftCollumn: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Booking ID',
            style: TextStyle(color: Colors.black45, fontSize: 12),
          ),
          const SizedBox(height: 4),
          GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: bookingId.toUpperCase()))
                  .then((_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Booking ID copied to clipboard',
                    ),
                  ),
                );
              });
            },
            child: Row(
              children: [
                Text(
                  bookingId.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 6),
                const Icon(Icons.copy, size: 14)
              ],
            ),
          ),
        ],
      ),
      rightCollumn: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            'Booking Status',
            style: TextStyle(color: Colors.black45, fontSize: 12),
          ),
          const SizedBox(height: 4),
          Text(
            bookingStatus.name.sentenceCase,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
