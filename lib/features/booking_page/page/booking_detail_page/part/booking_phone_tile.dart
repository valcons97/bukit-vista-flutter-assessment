part of '../booking_detail_page.dart';

class BookingInformationPhoneTile extends StatelessWidget {
  const BookingInformationPhoneTile({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BukitVistaInformationTile(
      leftColumn: [
        const BookingTitleText(title: 'Phone Number'),
        const SizedBox(height: 4),
        Row(
          children: [
            BookingSubtitleText(
              subtitle: phoneNumber,
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.phone_enabled_outlined,
              size: 14,
              color: Colors.black54,
            )
          ],
        ),
      ],
    );
  }
}
