import 'package:flutter/material.dart';

import '../../home_page/widgets/featureds_widget.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [Featured(), Featured(), Featured()],
      ),
    );
  }
}
