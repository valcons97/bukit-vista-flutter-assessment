part of '../booking_detail_page.dart';

class ReservationTabView extends StatelessWidget {
  const ReservationTabView({
    super.key,
    this.bookingModelDetail,
  });

  final BookingModel? bookingModelDetail;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BookingInformationDayTile(
          checkInDate: bookingModelDetail!.checkInDate,
          checkOutDate: bookingModelDetail!.checkOutDate,
        ),
        const BukitVistaDivider(height: 6),
        BookingInformationIdTile(
          bookingId: bookingModelDetail!.id,
          bookingStatus: bookingModelDetail!.bookingStatus,
        ),
        BookingInformationValueTile(
          totalGuest: bookingModelDetail!.totalGuest,
          bookingValue: bookingModelDetail!.bookingValue.toString(),
        ),
      ],
    );
  }
}
