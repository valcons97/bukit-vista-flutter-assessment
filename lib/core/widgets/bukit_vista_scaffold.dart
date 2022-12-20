import 'package:flutter/material.dart';

import 'bukit_vista_bottom_navbar.dart';

class BukitVistaScaffold extends StatelessWidget {
  const BukitVistaScaffold({
    super.key,
    required this.title,
    required this.body,
    required this.selectedIndex,
  });

  final String title;
  final Widget body;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: BukitVistaBottomNavbar(selectedIndex: selectedIndex),
    );
  }
}
