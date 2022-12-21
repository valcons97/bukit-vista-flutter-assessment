import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../index.dart';

part 'booking_page_state.dart';
part 'enums.dart';

@injectable
class BookingPageCubit extends Cubit<BookingPageState> {
  BookingPageCubit()
      : super(
          BookingPageState(
            state: BookingState.loaded,
            navbarSelectedIndex: 1,
            chipSelectedIndex: 0,
            bookingModel: dummyBookingModel,
            page: Booking.list,
            tabState: TabState.journey,
          ),
        );

  /// Set active navbar index
  void setNavbarIndex(int index) {
    emit(state.copyWith(navbarSelectedIndex: index));
  }

  /// Set active chip index
  void setChipIndex(int index) {
    emit(state.copyWith(chipSelectedIndex: index));
  }

  /// Whenever owner press yes in booking list will change
  /// room status into ready
  void setRoomStatus(String id) {
    final List<BookingModel> changeModel = [];

    final index = state.bookingModel.indexWhere((element) => element.id == id);
    final model = state.bookingModel[index].copyWith(status: RoomStatus.ready);

    for (int x = 0; x < state.bookingModel.length; x++) {
      if (state.bookingModel[x].id == id) {
        changeModel.add(model);
      } else {
        changeModel.add(state.bookingModel[x]);
      }
    }

    emit(state.copyWith(bookingModel: changeModel));
  }

  /// Move to booking detail page
  void goToBookingDetail(BookingModel bookingModelDetail) {
    emit(
      state.copyWith(
        page: Booking.detail,
        bookingModelDetail: bookingModelDetail,
      ),
    );
  }

  /// Move to booking list and reset tab state
  void goToBookingList() {
    emit(
      state.copyWith(
        page: Booking.list,
        tabState: TabState.journey,
      ),
    );
  }

  /// Set tab state
  void setTabState(int value) {
    final TabState tabState;
    value == 0 ? tabState = TabState.journey : tabState = TabState.reservation;
    emit(
      state.copyWith(tabState: tabState),
    );
  }
}
