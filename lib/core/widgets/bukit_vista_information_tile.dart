import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  factory BukitVistaInformationTile.bookingDays({
    required DateTime checkInDate,
    required DateTime checkOutDate,
  }) {
    return BukitVistaInformationTile(
      /// Check in column
      leftColumn: [
        const BookingTitleText(title: 'Check in'),
        const SizedBox(height: 4),
        BookingSubtitleText(
          subtitle: DateFormat('HH:mm').format(
            checkInDate.toLocal(),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          DateFormat('MMM dd, yyyy').format(
            checkInDate.toLocal(),
          ),
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        )
      ],

      /// Icon and nights column
      middleColumn: [
        const Icon(
          Icons.bedtime_outlined,
          color: Colors.black54,
        ),
        const SizedBox(height: 4),
        Text(
          '${checkOutDate.difference(checkInDate).inDays - 1} Nights',
          style: TextStyle(
            color: Colors.blue[700],
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],

      /// Check out column
      rightColumn: [
        const BookingTitleText(title: 'Check out'),
        const SizedBox(height: 4),
        BookingSubtitleText(
          subtitle: DateFormat('HH:mm').format(
            checkOutDate.toLocal(),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          DateFormat('MMM dd, yyyy').format(
            checkOutDate.toLocal(),
          ),
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  factory BukitVistaInformationTile.twoColumns({
    required String leftTitle,
    required String leftSubtitle,
    required String rightTitle,
    required String rightSubtitle,
    VoidCallback? onTap,
    Widget? icon,
  }) {
    return BukitVistaInformationTile(
      leftColumn: [
        BookingTitleText(title: leftTitle),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: onTap ?? () {},
          child: Row(
            children: [
              BookingSubtitleText(
                subtitle: leftSubtitle,
              ),
              const SizedBox(width: 6),
              icon ?? Container(),
            ],
          ),
        ),
      ],
      rightColumn: [
        BookingTitleText(title: rightTitle),
        const SizedBox(height: 4),
        BookingSubtitleText(
          subtitle: rightSubtitle,
        ),
      ],
    );
  }

  factory BukitVistaInformationTile.oneColumn({
    required String leftTitle,
    required String leftSubtitle,
    VoidCallback? onTap,
    Widget? icon,
  }) {
    return BukitVistaInformationTile(
      leftColumn: [
        BookingTitleText(title: leftTitle),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: onTap ?? () {},
          child: Row(
            children: [
              BookingSubtitleText(
                subtitle: leftSubtitle,
              ),
              const SizedBox(width: 6),
              icon ?? Container(),
            ],
          ),
        ),
      ],
    );
  }
}

class BookingTitleText extends StatelessWidget {
  const BookingTitleText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(color: Colors.black45, fontSize: 12),
    );
  }
}

class BookingSubtitleText extends StatelessWidget {
  const BookingSubtitleText({
    super.key,
    required this.subtitle,
    this.size,
  });

  final String subtitle;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyle(
        color: Colors.black54,
        fontSize: size ?? 12,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
