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
    return Row(
      children: [
        leftCollumn,
        middleCollumn ?? Container(),
        rightCollumn,
      ],
    );
  }

  factory BukitVistaInformationTile.stayingDays({
    required DateTime checkIn,
    required DateTime checkOut,
  }) {
    return BukitVistaInformationTile(
      leftCollumn: Column(
        children: [
          const Text('Check in'),
          const SizedBox(height: 4),
          Text(
            DateFormat('hh:mm').format(checkIn.toLocal()),
          )
        ],
      ),
      middleCollumn: Column(
        children: [
          const Icon(Icons.bedtime_outlined),
          const SizedBox(height: 4),
          Text(checkIn.difference(checkOut).inDays.toString()),
        ],
      ),
      rightCollumn: Column(
        children: [
          const Text('Check out'),
          const SizedBox(height: 4),
          Text(
            DateFormat('hh:mm').format(checkOut.toLocal()),
          )
        ],
      ),
    );
  }
}
