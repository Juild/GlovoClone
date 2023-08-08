import 'package:flutter/material.dart';

import '../../home_page/widgets/featureds_widget.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Column(
        children: [Featured(), Featured(), Featured()],
      ),
    );
  }
}
