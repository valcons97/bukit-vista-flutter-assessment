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
    this.backButton = false,
    this.onPressed,
    this.floatingButton = false,
  });

  /// Title for page
  final String title;

  /// List of widget for body
  final Widget body;

  /// Selected index for [BukitVistaBottomNavbar]
  final int selectedIndex;

  /// To show back button
  final bool backButton;

  /// To program back button function
  final VoidCallback? onPressed;

  ///
  final bool floatingButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: onPressed ?? () {},
              )
            : null,
        centerTitle: true,
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: BukitVistaBottomNavbar(selectedIndex: selectedIndex),
      floatingActionButton: floatingButton
          ? FloatingActionButton(
              onPressed: () {
                // Respond to button press
              },
              child: const Icon(Icons.add, size: 36),
            )
          : null,
    );
  }
}
