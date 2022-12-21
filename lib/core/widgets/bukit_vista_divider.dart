import 'package:flutter/material.dart';

class BukitVistaDivider extends StatelessWidget {
  const BukitVistaDivider({
    super.key,
    this.height,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Divider(height: height ?? 3);
  }
}
