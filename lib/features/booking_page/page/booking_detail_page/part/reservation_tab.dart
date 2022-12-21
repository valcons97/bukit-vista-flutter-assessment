part of '../booking_detail_page.dart';

class ReservationTabView extends StatelessWidget {
  const ReservationTabView({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: children,
    );
  }
}
