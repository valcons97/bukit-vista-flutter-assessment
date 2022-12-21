import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      leftCollumn: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Check in'),
          const SizedBox(height: 4),
          Text(
            DateFormat('HH:mm').format(checkIn.toLocal()),
          ),
          const SizedBox(height: 4),
          Text(
            DateFormat('MMM dd, yyyy').format(checkIn.toLocal()),
          )
        ],
      ),
      middleCollumn: Column(
        children: [
          const Icon(Icons.bedtime_outlined),
          const SizedBox(height: 4),
          Text('${checkOut.difference(checkIn).inDays - 1} Night'),
        ],
      ),
      rightCollumn: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text('Check out'),
          const SizedBox(height: 4),
          Text(
            DateFormat('HH:mm').format(checkOut.toLocal()),
          ),
          const SizedBox(height: 4),
          Text(
            DateFormat('MMM dd, yyyy').format(checkOut.toLocal()),
          )
        ],
      ),
    );
  }
}
