part of '../booking_detail_page.dart';

/// Tab view for guest journey
class GuestJourneyTabView extends StatelessWidget {
  const GuestJourneyTabView({
    super.key,
    required this.guestJourney,
  });

  /// list of guest journey
  final List<String> guestJourney;

  @override
  Widget build(BuildContext context) {
    late Widget body;

    if (guestJourney.isEmpty) {
      body = Container(
        color: const Color(0xFFFAFAFA),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.content_paste_off_sharp,
              size: 64,
            ),
            Text(
              'Nothing Happpening Now',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'We will let you know',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      );
    } else {
      body = Container();
    }

    return body;
  }
}
