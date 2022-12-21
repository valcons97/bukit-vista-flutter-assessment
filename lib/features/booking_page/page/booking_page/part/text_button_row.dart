part of '../booking_page.dart';

/// Container consist of text button for
/// - [Earlier]
/// - [Refresh]
class TextButtonRow extends StatelessWidget {
  const TextButtonRow({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onTap ?? () {},
              child: const Text(
                'Earlier',
                style: TextStyle(color: Colors.black45),
              ),
            ),
            InkWell(
              onTap: onTap ?? () {},
              child: Text(
                'Refresh',
                style: TextStyle(color: Colors.amber[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
