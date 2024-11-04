
import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  const H1 (this.text,{super.key});

  final String text;

  @override
  Widget build(BuildContext context) =>
      Text(text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    );
}