part of '../booking_detail_page.dart';

/// Tab view for reservation
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
        /// Booking Information Section
        /// Booking Days Tile
        BukitVistaInformationTile.bookingDays(
          checkInDate: bookingModelDetail!.checkInDate,
          checkOutDate: bookingModelDetail!.checkOutDate,
        ),
        const BukitVistaDivider(height: 6),

        /// Booking ID Tile
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

        /// Booking Value Tile
        BukitVistaInformationTile.twoColumns(
          leftTitle: 'Number of guest',
          leftSubtitle: bookingModelDetail!.totalGuest.toString(),
          rightTitle: 'Booking value',
          rightSubtitle:
              bookingModelDetail!.bookingValue.toString().toCurrency(),
        ),

        /// Booking Guest Phone Tile
        BukitVistaInformationTile.oneColumn(
          leftTitle: 'Phone Number',
          leftSubtitle: bookingModelDetail!.profileModel.phoneNumber,
          icon: const Icon(
            Icons.phone_enabled_outlined,
            size: 14,
            color: Colors.black54,
          ),
        ),

        /// Host Section
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          color: const Color(0xFFFAFAFA),
          child: const BookingSubtitleText(
            subtitle: 'Hosting Detail',
            size: 14,
          ),
        ),

        /// Host Name
        BukitVistaInformationTile.oneColumn(
          leftTitle: 'Host',
          leftSubtitle: bookingModelDetail!.hostModel.hostName,
        ),

        /// Host Profile Name
        BukitVistaInformationTile.oneColumn(
          leftTitle: 'Profile name',
          leftSubtitle: bookingModelDetail!.hostModel.hostProfileName,
        ),

        /// Host Property Unit
        BukitVistaInformationTile.oneColumn(
          leftTitle: 'Property unit',
          leftSubtitle: bookingModelDetail!.hostModel.hostPropertyUnit,
        ),

        /// Host Listing Name
        BukitVistaInformationTile.oneColumn(
          leftTitle: 'Listing Name',
          leftSubtitle: bookingModelDetail!.hostModel.listingName,
          color: Colors.amber[700],
        ),
      ],
    );
  }
}
