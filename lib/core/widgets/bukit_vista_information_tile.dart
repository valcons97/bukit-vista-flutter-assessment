import 'package:flutter/material.dart';

class BukitVistaInformationTile extends StatelessWidget {
  const BukitVistaInformationTile({
    super.key,
    required this.leftColumn,
    this.middleColumn,
    this.rightColumn,
  });

  final List<Widget> leftColumn;
  final List<Widget>? middleColumn;
  final List<Widget>? rightColumn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: leftColumn,
          ),
          Column(
            children: middleColumn ?? [],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: rightColumn ?? [],
          ),
        ],
      ),
    );
  }
}
