import 'package:flutter/material.dart';

import '../../features/booking_page/index.dart';
import '../core.dart';

/// Profile card for guest bukit vista contain
/// - [name]
/// - [location]
/// - [profileStatus]
/// - [imageUrl]
class BukitVistaProfileCard extends StatelessWidget {
  const BukitVistaProfileCard({
    super.key,
    required this.name,
    required this.location,
    required this.profileStatus,
    required this.imageUrl,
  });

  /// Guest's name
  final String name;

  /// Guest's country origin
  final String location;

  /// Guest's status
  final ProfileStatus profileStatus;

  /// Guest's
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
