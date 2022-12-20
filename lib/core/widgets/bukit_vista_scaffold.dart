import 'package:flutter/material.dart';

class BukitVistaScaffold extends StatelessWidget {
  const BukitVistaScaffold({
    super.key,
    required this.title,
    required this.widget,
  });

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: widget,
    );
  }
}
