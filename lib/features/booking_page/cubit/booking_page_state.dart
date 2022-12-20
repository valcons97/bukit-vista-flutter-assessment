part of 'booking_page_cubit.dart';

class BookingPageState extends Equatable {
  const BookingPageState({
    required this.selectedIndex,
    required this.state,
  });

  final int selectedIndex;
  final BookingState state;

  @override
  List<Object?> get props => [selectedIndex];

  BookingPageState copyWith({
    int? selectedIndex,
    BookingState? state,
  }) {
    return BookingPageState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      state: state ?? this.state,
    );
  }
}
