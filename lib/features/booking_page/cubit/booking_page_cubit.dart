import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'booking_page_state.dart';
part 'enums.dart';

@injectable
class BookingPageCubit extends Cubit<BookingPageState> {
  BookingPageCubit()
      : super(
          const BookingPageState(
            state: BookingState.loaded,
            navbarSelectedIndex: 1,
            chipSelectedIndex: 0,
          ),
        );

  void setNavbarIndex(int index) {
    emit(state.copyWith(navbarSelectedIndex: index));
  }

  void setChipIndex(int index) {
    emit(state.copyWith(chipSelectedIndex: index));
  }
}
