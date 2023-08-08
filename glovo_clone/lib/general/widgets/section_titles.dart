import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Title?',
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
