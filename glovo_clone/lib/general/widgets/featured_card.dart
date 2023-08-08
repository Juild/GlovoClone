import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class FeaturedCard extends StatelessWidget {
  final int rating;
  final double price;
  final void Function() onTap;
  const FeaturedCard({
    super.key,
    required this.rating,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 8.0,
        child: SizedBox(
          width: 172,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 172,
                    child: CachedNetworkImage(
                      fit: BoxFit.fitWidth,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      imageUrl: 'https://picsum.photos/250?image=9',
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Rating $rating %'),
                      Text('Price: $price €'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
