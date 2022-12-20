part of '../booking_page.dart';

class ChipsList extends StatelessWidget {
  const ChipsList({
    super.key,
    required this.selectedChipIndex,
  });

  final int selectedChipIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 0.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Chip(
              chipTitle: 'Arrival',
              chipIndex: 0,
              selectedChipIndex: selectedChipIndex,
            ),
            Chip(
              chipTitle: 'Stay Over',
              chipIndex: 1,
              selectedChipIndex: selectedChipIndex,
            ),
            Chip(
              chipTitle: 'Departure',
              chipIndex: 2,
              selectedChipIndex: selectedChipIndex,
            ),
            Chip(
              chipTitle: 'Cancelled',
              chipIndex: 3,
              selectedChipIndex: selectedChipIndex,
            ),
            Chip(
              chipTitle: 'Show All',
              chipIndex: 4,
              selectedChipIndex: selectedChipIndex,
            ),
          ],
        ),
      ),
    );
  }
}
