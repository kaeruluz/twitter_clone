import 'package:flutter/material.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  const RoundedSmallButton(
      {super.key, required this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
    );
  }
}
