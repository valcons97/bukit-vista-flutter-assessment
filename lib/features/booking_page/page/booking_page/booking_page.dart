import 'package:bukit_vista/core/widgets/bukit_vista_profile_card.dart';
import 'package:bukit_vista/features/booking_page/model/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/widgets.dart';
import '../../cubit/booking_page_cubit.dart';

part 'part/chip.dart';
part 'part/chips_list.dart';
part 'part/date.dart';
part 'part/text_button_row.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingPageCubit, BookingPageState>(
      builder: (context, state) {
        late Widget body;
        if (state.state == BookingState.loading) {
          body = const Center(child: CircularProgressIndicator());
        } else if (state.state == BookingState.loaded) {
          switch (state.page) {
            case Booking.list:
              body = CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const DateContainer(),
                        const SizedBox(height: 12),
                        ChipsList(selectedChipIndex: state.chipSelectedIndex),
                        const SizedBox(height: 8),
                        const TextButtonRow(),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: state.bookingModel.length,
                      (context, index) {
                        return BukitVistaListtile(
                          id: state.bookingModel[index].id,
                          date: state.bookingModel[index].checkInDate,
                          totalReview: state.bookingModel[index].totalReview,
                          status: state.bookingModel[index].status,
                          roomType: state.bookingModel[index].roomType,
                          hostPropertyUnit: state
                              .bookingModel[index].hostModel.hostPropertyUnit,
                          onTap: () {
                            context
                                .read<BookingPageCubit>()
                                .goToBookingDetail(state.bookingModel[index]);
                          },
                        );
                      },
                    ),
                  )
                ],
              );
              break;
            case Booking.detail:
              body = CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: BukitVistaProfileCard(
                      name:
                          state.bookingModelDetail?.profileModel.userName ?? '',
                      location:
                          state.bookingModelDetail?.profileModel.location ?? '',
                      profileStatus: state
                              .bookingModelDetail?.profileModel.profileStatus ??
                          ProfileStatus.unknown,
                      imageUrl:
                          state.bookingModelDetail?.profileModel.imageUrl ?? '',
                    ),
                  ),
                ],
              );
          }
        }
        return BukitVistaScaffold(
          title: 'Booking',
          body: body,
          selectedIndex: state.navbarSelectedIndex,
        );
      },
    );
  }
}
