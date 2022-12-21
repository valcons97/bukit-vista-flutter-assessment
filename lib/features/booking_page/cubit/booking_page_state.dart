part of 'booking_page_cubit.dart';

class BookingPageState extends Equatable {
  const BookingPageState({
    required this.state,
    required this.navbarSelectedIndex,
    required this.chipSelectedIndex,
    required this.bookingModel,
    required this.page,
    this.bookingModelDetail,
  });

  /// State for booking and detail page
  final BookingState state;

  /// Bottom navbar selected index
  final int navbarSelectedIndex;

  /// Chip selected index
  final int chipSelectedIndex;

  /// List of booking
  final List<BookingModel> bookingModel;

  final Booking page;

  final BookingModel? bookingModelDetail;

  @override
  List<Object?> get props => [
        state,
        navbarSelectedIndex,
        chipSelectedIndex,
        bookingModel,
        page,
        bookingModelDetail,
      ];

  BookingPageState copyWith({
    BookingState? state,
    int? navbarSelectedIndex,
    int? chipSelectedIndex,
    List<BookingModel>? bookingModel,
    Booking? page,
    BookingModel? bookingModelDetail,
  }) {
    return BookingPageState(
      state: state ?? this.state,
      navbarSelectedIndex: navbarSelectedIndex ?? this.navbarSelectedIndex,
      chipSelectedIndex: chipSelectedIndex ?? this.chipSelectedIndex,
      bookingModel: bookingModel ?? this.bookingModel,
      page: page ?? this.page,
      bookingModelDetail: bookingModelDetail ?? this.bookingModelDetail,
    );
  }
}
