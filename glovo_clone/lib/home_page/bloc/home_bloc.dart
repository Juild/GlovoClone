import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ScrollController _scrollController = ScrollController();
  HomeBloc() : super(const HomeState(scrollState: ScrollState.notMiddle)) {
    on<HomeEvent>((event, emit) => switch (event) { ScrolledToMiddle() => emit(state) });
  }
  ScrollController get scrollController => _scrollController;
}
