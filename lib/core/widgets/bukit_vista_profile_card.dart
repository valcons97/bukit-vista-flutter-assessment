import 'package:flutter/material.dart';

import '../../features/booking_page/index.dart';
import '../core.dart';

class BukitVistaProfileCard extends StatelessWidget {
  const BukitVistaProfileCard({
    super.key,
    required this.name,
    required this.location,
    required this.profileStatus,
    required this.imageUrl,
  });

  final String name;
  final String location;
  final ProfileStatus profileStatus;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.transparent,
            radius: 30,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.blueGrey[800],
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                location,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 8),
              BukitVistaProfileChip(profileStatus: profileStatus),
            ],
          )
        ],
      ),
    );
  }
}
