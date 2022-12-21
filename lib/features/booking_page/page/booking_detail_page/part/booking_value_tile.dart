part of '../booking_detail_page.dart';

class BookingInformationValueTile extends StatelessWidget {
  const BookingInformationValueTile({
    super.key,
    required this.totalGuest,
  });

  final int totalGuest;

  @override
  Widget build(BuildContext context) {
    return BukitVistaInformationTile(
      leftColumn: [
        const BookingTitleText(title: 'Number of guest'),
        const SizedBox(height: 4),
        BookingSubtitleText(
          subtitle: totalGuest.toString(),
        ),
      ],
    );
  }
}
