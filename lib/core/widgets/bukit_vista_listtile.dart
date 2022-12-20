import 'package:bukit_vista/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../features/booking_page/cubit/booking_page_cubit.dart';
import '../../features/booking_page/model/enums.dart';

class BukitVistaListtile extends StatelessWidget {
  const BukitVistaListtile({
    super.key,
    required this.id,
    required this.date,
    required this.totalReview,
    required this.status,
    required this.roomType,
    required this.hostPropertyUnit,
  });

  final String id;
  final DateTime date;
  final int totalReview;
  final RoomStatus status;
  final String roomType;
  final String hostPropertyUnit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Date and Total Review
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Color.fromARGB(255, 37, 122, 62),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 8,
                      ),
                      child: Text(
                        DateFormat('dd\nMMM').format(date.toLocal()),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.chat, size: 12),
                      const SizedBox(width: 4),
                      Text(
                        totalReview.toString(),
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(width: 16),

              /// Chips, Room name, Place, Button
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BukitVistaChip(status: status),
                  const SizedBox(height: 8),
                  Text(
                    roomType,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    hostPropertyUnit,
                    style: const TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Material(
                    child: InkWell(
                      onTap: () {
                        debugPrint('masuk');
                        context.read<BookingPageCubit>().setRoomStatus(id);
                      },
                      child: Container(
                        color: Colors.white,
                        child: Visibility(
                          visible: status == RoomStatus.notReady,
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                const VerticalDivider(
                                  thickness: 5,
                                ),
                                const SizedBox(width: 4),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Is the Room Ready for guest arrival?',
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 10,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'YES',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black54,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),

              /// Button to detail
              Material(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 28,
                      horizontal: 32,
                    ),
                    color: Colors.white,
                    child: const Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
