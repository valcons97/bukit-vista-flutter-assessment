import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/booking_page/cubit/booking_page_cubit.dart';

class BukitVistaBottomNavbar extends StatelessWidget {
  const BukitVistaBottomNavbar({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Property',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_rounded),
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wallet_outlined),
          label: 'Accounting',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue[600],
      unselectedItemColor: Colors.blue[900],
      showUnselectedLabels: true,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      onTap: (value) {
        context.read<BookingPageCubit>().setNavbarIndex(value);
      },
    );
  }
}
