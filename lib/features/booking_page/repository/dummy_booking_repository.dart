import 'package:bukit_vista/features/booking_page/model/enums.dart';
import 'package:bukit_vista/features/booking_page/model/models.dart';

const dummyProfileModel = ProfileModel(
  id: '1',
  userName: 'Cleo Kimberly',
  status: 'repeater',
  imageUrl: '',
  location: 'Melbourne, Australia',
  note: '',
  journeyStatus: [],
);

const dummyHostModel = HostModel(
  id: '1',
  hostName: 'Rafik Bukit Vista',
  hostProfileName: 'Bayu & Wayan',
  hostPropertyUnit: 'ME Villa - B (1BR)',
  listingName: '4BR Homey Villa in Uluwatu | Kitchen + Wifi + Pool',
);

final dummyBookingModel = [
  BookingModel(
    id: 'Jonathan',
    checkInDate: DateTime.utc(2022, 12, 20, 7, 20),
    checkOutDate: DateTime.utc(2022, 12, 26, 3, 30),
    totalReview: 12,
    status: RoomStatus.notReady,
    roomType: 'Grant Marshal',
    profileModel: dummyProfileModel,
    hostModel: dummyHostModel,
  ),
];
