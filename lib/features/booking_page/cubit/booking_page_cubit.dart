import 'package:bukit_vista/features/booking_page/model/enums.dart';
import 'package:bukit_vista/features/booking_page/model/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../repository/dummy_booking_repository.dart';

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
          ),
        );

  void setNavbarIndex(int index) {
    emit(state.copyWith(navbarSelectedIndex: index));
  }

  void setChipIndex(int index) {
    emit(state.copyWith(chipSelectedIndex: index));
  }

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
}
