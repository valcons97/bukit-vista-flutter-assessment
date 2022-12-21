import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
    this.openCloseDial,
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

  /// Boolean to show floating button
  final bool floatingButton;

  /// Notifier for speed dial
  final ValueNotifier<bool>? openCloseDial;

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
        actions: [
          Row(
            children: [
              Visibility(visible: !backButton, child: const Icon(Icons.search)),
              const SizedBox(width: 8),
              const Icon(Icons.help_outline),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
      body: body,
      bottomNavigationBar: BukitVistaBottomNavbar(selectedIndex: selectedIndex),
      floatingActionButton: SpeedDial(
        visible: floatingButton,
        icon: Icons.add,
        activeIcon: Icons.close,
        openCloseDial: openCloseDial,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.draw_outlined),
            labelWidget: const Text('Add notes'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.insights),
            labelWidget: const Text('Update status'),
          ),
        ],
      ),
    );
  }
}
