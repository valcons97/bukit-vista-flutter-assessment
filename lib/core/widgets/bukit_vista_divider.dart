import 'package:flutter/material.dart';

/// Bukit vista default divider
class BukitVistaDivider extends StatelessWidget {
  const BukitVistaDivider({
    super.key,
    this.height,
  });

  /// height for divider
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Divider(height: height ?? 3, thickness: 1);
  }
}
