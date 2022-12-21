part of '../booking_detail_page.dart';

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
  });

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(
        color: Colors.black54,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
