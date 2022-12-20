part of 'booking_page_cubit.dart';

class BookingPageState extends Equatable {
  const BookingPageState({
    required this.state,
    required this.navbarSelectedIndex,
    required this.chipSelectedIndex,
  });

  /// State for booking and detail page
  final BookingState state;

  /// Bottom navbar selected index
  final int navbarSelectedIndex;

  final int chipSelectedIndex;

  @override
  List<Object?> get props => [
        navbarSelectedIndex,
        chipSelectedIndex,
      ];

  BookingPageState copyWith({
    BookingState? state,
    int? navbarSelectedIndex,
    int? chipSelectedIndex,
  }) {
    return BookingPageState(
      state: state ?? this.state,
      navbarSelectedIndex: navbarSelectedIndex ?? this.navbarSelectedIndex,
      chipSelectedIndex: chipSelectedIndex ?? this.chipSelectedIndex,
    );
  }
}
