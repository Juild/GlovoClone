import 'package:flutter/material.dart';
import 'package:glovo_clone/general/widgets/featured_card.dart';

class AppListView extends StatelessWidget {
  final Axis scrollAxis;
  const AppListView({required this.scrollAxis, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: scrollAxis,
        itemBuilder: (context, index) => FeaturedCard(
              rating: 10,
              price: 10,
              onTap: () {},
            ));
  }
}
