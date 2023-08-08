import 'package:equatable/equatable.dart';

enum ScrollState {
  notMiddle,
  middle,
}

class HomeState extends Equatable {
  final ScrollState scrollState;
  const HomeState({required this.scrollState});

  @override
  List<Object?> get props => [scrollState];
}
