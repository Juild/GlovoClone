import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:glovo_clone/general/widgets/featured_card.dart';
import 'package:glovo_clone/general/widgets/section_titles.dart';

class Featured extends StatelessWidget {
  const Featured({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.all(8.0), child: SectionTitle()),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                clipBehavior: Clip.none,
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FeaturedCard(
                      rating: 90,
                      price: 10,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FeaturedCard(
                      rating: 90,
                      price: 10,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                    child: FeaturedCard(
                      rating: 90,
                      price: 10,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FeaturedCard(
                      rating: 90,
                      price: 10,
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FeaturedCard(
                      rating: 90,
                      price: 10,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
