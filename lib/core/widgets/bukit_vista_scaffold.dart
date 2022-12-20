import 'package:flutter/material.dart';

import 'bukit_vista_bottom_navbar.dart';

class BukitVistaScaffold extends StatelessWidget {
  const BukitVistaScaffold({
    super.key,
    required this.title,
    required this.widget,
    required this.selectedIndex,
  });

  final String title;
  final Widget widget;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: widget,
      bottomNavigationBar: BukitVistaBottomNavbar(selectedIndex: selectedIndex),
    );
  }
}
