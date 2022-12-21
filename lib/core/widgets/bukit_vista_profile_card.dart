import 'package:flutter/material.dart';

import '../../features/booking_page/model/enums.dart';
import 'bukit_vista_profile_chip.dart';

class BukitVistaProfileCard extends StatelessWidget {
  const BukitVistaProfileCard({
    super.key,
    required this.name,
    required this.location,
    required this.profileStatus,
  });

  final String name;
  final String location;
  final ProfileStatus profileStatus;

  @override
  Widget build(BuildContext context) {
    // TODO : remove hardcoded
    return Row(
      children: [
        CircleAvatar(),
        Column(
          children: [
            Text(name),
            const SizedBox(height: 4),
            Text(location),
            const SizedBox(height: 4),
            BukitVistaProfileChip(profileStatus: profileStatus)
          ],
        )
      ],
    );
  }
}
