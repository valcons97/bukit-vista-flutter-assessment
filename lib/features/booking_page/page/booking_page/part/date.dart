part of '../booking_page.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
