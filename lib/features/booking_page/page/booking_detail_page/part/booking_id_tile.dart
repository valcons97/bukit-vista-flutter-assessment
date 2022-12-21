part of '../booking_detail_page.dart';

class BookingInformationIdTile extends StatelessWidget {
  const BookingInformationIdTile({
    super.key,
    required this.bookingId,
    required this.bookingStatus,
  });

  final String bookingId;
  final BookingStatus bookingStatus;

  @override
  Widget build(BuildContext context) {
    return BukitVistaInformationTile(
      leftColumn: [
        const BookingTitleText(title: 'Booking ID'),
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
              BookingSubtitleText(
                subtitle: bookingId.toUpperCase(),
              ),
              const SizedBox(width: 6),
              const Icon(Icons.copy, size: 14)
            ],
          ),
        ),
      ],
      rightColumn: [
        const BookingTitleText(title: 'Booking Status'),
        const SizedBox(height: 4),
        BookingSubtitleText(
          subtitle: bookingStatus.name.sentenceCase,
        ),
      ],
    );
  }
}
