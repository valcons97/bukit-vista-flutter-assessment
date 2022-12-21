part of '../booking_page.dart';

/// Date container for selecting start and end date
/// currently still in hardcode
class DateContainer extends StatelessWidget {
  const DateContainer({super.key});

  /// TODO : remove hardcoded
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Start Date'),
              Text('10 Nov 2020'),
            ],
          ),
          const Icon(Icons.arrow_forward_ios_sharp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('End Date'),
              Text('16 Nov 2020'),
            ],
          )
        ],
      ),
    );
  }
}
