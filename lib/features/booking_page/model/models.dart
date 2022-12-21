import 'package:equatable/equatable.dart';

part 'enums.dart';

class BookingModel extends Equatable {
  const BookingModel({
    required this.id,
    required this.checkInDate,
    required this.checkOutDate,
    required this.totalReview,
    required this.status,
    required this.roomType,
    required this.profileModel,
    required this.hostModel,
    required this.bookingStatus,
    required this.totalGuest,
    required this.bookingValue,
  });

  final String id;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final int totalReview;
  final RoomStatus status;
  final String roomType;
  final ProfileModel profileModel;
  final HostModel hostModel;
  final BookingStatus bookingStatus;
  final int totalGuest;
  final int bookingValue;

  @override
  List<Object?> get props => [
        id,
        status,
      ];

  BookingModel copyWith({
    String? id,
    DateTime? checkInDate,
    DateTime? checkOutDate,
    int? totalReview,
    RoomStatus? status,
    String? roomType,
    ProfileModel? profileModel,
    HostModel? hostModel,
    BookingStatus? bookingStatus,
    int? totalGuest,
    int? bookingValue,
  }) {
    return BookingModel(
      id: id ?? this.id,
      checkInDate: checkInDate ?? this.checkInDate,
      checkOutDate: checkOutDate ?? this.checkOutDate,
      totalReview: totalReview ?? this.totalReview,
      status: status ?? this.status,
      roomType: roomType ?? this.roomType,
      profileModel: profileModel ?? this.profileModel,
      hostModel: hostModel ?? this.hostModel,
      bookingStatus: bookingStatus ?? this.bookingStatus,
      totalGuest: totalGuest ?? this.totalGuest,
      bookingValue: bookingValue ?? this.bookingValue,
    );
  }
}

class ProfileModel extends Equatable {
  const ProfileModel({
    required this.id,
    required this.userName,
    required this.profileStatus,
    required this.imageUrl,
    required this.location,
    required this.note,
    required this.journeyStatus,
    required this.phoneNumber,
  });

  final String id;
  final String userName;
  final ProfileStatus profileStatus;
  final String imageUrl;
  final String location;
  final String note;
  final List<String> journeyStatus;
  final String phoneNumber;

  @override
  List<Object?> get props => [
        id,
      ];
}

class HostModel extends Equatable {
  const HostModel({
    required this.id,
    required this.hostName,
    required this.hostProfileName,
    required this.hostPropertyUnit,
    required this.listingName,
  });

  final String id;
  final String hostName;
  final String hostProfileName;
  final String hostPropertyUnit;
  final String listingName;

  @override
  List<Object?> get props => [
        id,
        hostName,
        hostProfileName,
        hostPropertyUnit,
        listingName,
      ];
}
