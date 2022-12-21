import 'package:equatable/equatable.dart';

import 'enums.dart';

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
  });

  final String id;
  final DateTime checkInDate;
  final DateTime checkOutDate;
  final int totalReview;
  final RoomStatus status;
  final String roomType;
  final ProfileModel profileModel;
  final HostModel hostModel;

  @override
  List<Object?> get props => [
        id,
        checkInDate,
        checkOutDate,
        totalReview,
        status,
        roomType,
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
    );
  }
}

class ProfileModel extends Equatable {
  const ProfileModel({
    required this.id,
    required this.userName,
    required this.status,
    required this.imageUrl,
    required this.location,
    required this.note,
    required this.journeyStatus,
  });

  final String id;
  final String userName;
  final String status;
  final String imageUrl;
  final String location;
  final String note;
  final List<String> journeyStatus;

  @override
  List<Object?> get props => [
        id,
        userName,
        status,
        imageUrl,
        location,
        note,
        journeyStatus,
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
