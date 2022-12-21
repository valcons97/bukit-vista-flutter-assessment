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
        BukitVistaInformationTile.bookingDays(
          checkInDate: bookingModelDetail!.checkInDate,
          checkOutDate: bookingModelDetail!.checkOutDate,
        ),
        const BukitVistaDivider(height: 6),
        BukitVistaInformationTile.twoColumns(
          leftTitle: 'Booking ID',
          leftSubtitle: bookingModelDetail!.id.toUpperCase(),
          icon: const Icon(
            Icons.copy,
            size: 14,
            color: Colors.black54,
          ),
          onTap: () {
            Clipboard.setData(
              ClipboardData(text: bookingModelDetail!.id.toUpperCase()),
            ).then((_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Booking ID copied to clipboard',
                  ),
                ),
              );
            });
          },
          rightTitle: 'Booking Status',
          rightSubtitle: bookingModelDetail!.bookingStatus.name.sentenceCase,
        ),
        BukitVistaInformationTile.twoColumns(
          leftTitle: 'Number of guest',
          leftSubtitle: bookingModelDetail!.totalGuest.toString(),
          rightTitle: 'Booking value',
          rightSubtitle:
              bookingModelDetail!.bookingValue.toString().toCurrency(),
        ),
        BukitVistaInformationTile.oneColumn(
          leftTitle: 'Phone Number',
          leftSubtitle: bookingModelDetail!.profileModel.phoneNumber,
          icon: const Icon(
            Icons.phone_enabled_outlined,
            size: 14,
            color: Colors.black54,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          color: const Color(0xFFFAFAFA),
          child: const BookingSubtitleText(
            subtitle: 'Hosting Detail',
            size: 14,
          ),
        )
      ],
    );
  }
}
