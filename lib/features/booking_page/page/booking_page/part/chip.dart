part of '../booking_page.dart';

class Chip extends StatelessWidget {
  const Chip({
    super.key,
    required this.chipTitle,
    required this.chipIndex,
    required this.selectedChipIndex,
  });

  final String chipTitle;
  final int chipIndex;
  final int selectedChipIndex;

  @override
  Widget build(BuildContext context) {
    final bool isActive;
    chipIndex == selectedChipIndex ? isActive = true : isActive = false;
    return GestureDetector(
      onTap: () {
        context.read<BookingPageCubit>().setChipIndex(chipIndex);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            border:
                Border.all(color: isActive ? Colors.transparent : Colors.blue),
            borderRadius: const BorderRadius.all(
              Radius.circular(6),
            ),
            color: isActive ? Colors.blue : Colors.white,
          ),
          child: Text(
            chipTitle,
            style: TextStyle(color: isActive ? Colors.white : Colors.blue),
          ),
        ),
      ),
    );
  }
}
