import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:glovo_clone/home_page/widgets/featureds_widget.dart';
import 'package:glovo_clone/home_page/widgets/wheel_choose_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.amber,
                Colors.white,
              ],
              stops: [0.49, 0.5],
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 8,
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
              ),
              const SliverToBoxAdapter(child: WheelChooser()),
              const SliverToBoxAdapter(
                child: ColoredBox(
                  color: Colors.white,
                  child: Column(
                    children: [Featured(), Featured(), Featured()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
