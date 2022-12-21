part of '../booking_detail_page.dart';

class BookingInformationDayTile extends StatelessWidget {
  const BookingInformationDayTile({
    super.key,
    required this.checkInDate,
    required this.checkOutDate,
  });

  final DateTime checkInDate;
  final DateTime checkOutDate;

  @override
  Widget build(BuildContext context) {
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
}
