
import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  const Title(this.txt,{super.key});

  final String txt;

  @override
  Widget build(BuildContext context) =>
      Text(txt,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    );
}
