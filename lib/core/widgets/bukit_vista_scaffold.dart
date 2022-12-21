import 'package:flutter/material.dart';

import 'bukit_vista_bottom_navbar.dart';

/// Scaffold class for apps thats have [BukitVistaBottomNavbar], requiring :
/// - [title]
/// - [body]
/// - [selectedIndex]
class BukitVistaScaffold extends StatelessWidget {
  const BukitVistaScaffold({
    super.key,
    required this.title,
    required this.body,
    required this.selectedIndex,
  });

  /// Title for page
  final String title;

  /// List of widget for body
  final Widget body;

  /// Selected index for [BukitVistaBottomNavbar]
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
