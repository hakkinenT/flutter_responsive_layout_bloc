part of 'responsive_bloc.dart';

enum ResponsiveScreen { initial, web, mobile }

class ResponsiveState extends Equatable {
  final ResponsiveScreen screen;

  const ResponsiveState({this.screen = ResponsiveScreen.initial});

  @override
  List<Object> get props => [screen];

  ResponsiveState copyWith({ResponsiveScreen? screen}) {
    return ResponsiveState(screen: screen ?? this.screen);
  }
}
