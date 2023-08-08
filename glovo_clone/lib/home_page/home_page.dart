import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glovo_clone/general/widgets/card_list.dart';
import 'package:glovo_clone/home_page/widgets/home_appbar.dart';
import 'package:glovo_clone/home_page/widgets/wheel_choose_widget.dart';

import 'bloc/home_bloc.dart';
import 'bloc/home_state.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(Object context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    final currentBloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
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
                controller: currentBloc.scrollController,
                slivers: const [
                  HomeAppBar(),
                  SliverToBoxAdapter(child: WheelChooser()),
                  SliverToBoxAdapter(child: CardsList()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
