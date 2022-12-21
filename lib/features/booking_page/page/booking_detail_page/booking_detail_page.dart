import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recase/recase.dart';

import '../../../../core/core.dart';
import '../../index.dart';

part 'part/guest_journey_tab.dart';
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
    return WillPopScope(
      onWillPop: () async {
        context.read<BookingPageCubit>().goToBookingList();
        return false;
      },
      child: DefaultTabController(
        length: tabs.length,
        child: Container(
          color: Colors.white,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverList(
                  delegate:
                      // TODO : find fix for this dirty fix
                      SliverChildListDelegate([const SizedBox(height: 0.001)]),
                ),
              ];
            },
            body: Column(
              children: [
                BukitVistaProfileCard(
                  name: bookingModelDetail?.profileModel.userName ?? '',
                  location: bookingModelDetail?.profileModel.location ?? '',
                  profileStatus:
                      bookingModelDetail?.profileModel.profileStatus ??
                          ProfileStatus.unknown,
                  imageUrl: bookingModelDetail?.profileModel.imageUrl ?? '',
                ),
                const BukitVistaDivider(height: 6),
                TabBar(
                  onTap: (value) {
                    context.read<BookingPageCubit>().setTabState(value);
                  },
                  tabs: tabs,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black54,
                ),
                const BukitVistaDivider(),
                Expanded(
                  child: TabBarView(
                    children: [
                      const GuestJourneyTabView(guestJourney: []),
                      ReservationTabView(bookingModelDetail: bookingModelDetail)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
