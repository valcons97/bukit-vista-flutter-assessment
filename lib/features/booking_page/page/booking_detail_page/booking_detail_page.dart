import 'package:bukit_vista/features/booking_page/model/models.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/widgets.dart';
import '../../model/enums.dart';

part 'part/reservation_tab.dart';

class BookingDetailPage extends StatelessWidget {
  const BookingDetailPage({
    super.key,
    this.bookingModelDetail,
  });

  final BookingModel? bookingModelDetail;

  static const List<Widget> tabs = [
    Tab(text: 'Guest Journey'),
    Tab(text: 'Reservation'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Container(
        color: Colors.white,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [];
          },
          body: Column(
            children: [
              BukitVistaProfileCard(
                name: bookingModelDetail?.profileModel.userName ?? '',
                location: bookingModelDetail?.profileModel.location ?? '',
                profileStatus: bookingModelDetail?.profileModel.profileStatus ??
                    ProfileStatus.unknown,
                imageUrl: bookingModelDetail?.profileModel.imageUrl ?? '',
              ),
              const BukitVistaDivider(),
              const TabBar(
                tabs: tabs,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black54,
              ),
              const BukitVistaDivider(),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                        child: Container(height: 28000, child: Text('Tab 1'))),
                    ReservationTabView(
                      children: [
                        BukitVistaInformationTile.stayingDays(
                          checkIn: bookingModelDetail!.checkInDate,
                          checkOut: bookingModelDetail!.checkOutDate,
                        ),
                        const BukitVistaDivider()
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
