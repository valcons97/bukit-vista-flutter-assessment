import 'package:flutter/material.dart';

class BukitVistaBottomNavbar extends StatelessWidget {
  const BukitVistaBottomNavbar({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'My Property',
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
      selectedItemColor: Colors.amber[800],
      onTap: (value) {},
    );
  }
}
