
import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) => Text('Mensajes bonitos para tía',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    );
}
