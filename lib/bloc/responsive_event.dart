part of 'responsive_bloc.dart';

abstract class ResponsiveEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ResponsiveWeb extends ResponsiveEvent {
  ResponsiveWeb();
}

class ResponsiveMobile extends ResponsiveEvent {
  ResponsiveMobile();
}
