import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      pinned: true,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: SearchBar(
          backgroundColor: MaterialStatePropertyAll(Colors.amber[100]),
          elevation: const MaterialStatePropertyAll(0),
          constraints: const BoxConstraints(maxWidth: 300),
          hintText: 'What can we get you?',
          textStyle: MaterialStatePropertyAll(Theme.of(context).textTheme.bodyMedium),
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(
              Icons.card_giftcard_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
