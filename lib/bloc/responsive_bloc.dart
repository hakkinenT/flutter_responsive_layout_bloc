import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'responsive_event.dart';
part 'responsive_state.dart';

class ResponsiveBloc extends Bloc<ResponsiveEvent, ResponsiveState> {
  ResponsiveBloc() : super(const ResponsiveState()) {
    on<ResponsiveMobile>(_responsiveMobile);
    on<ResponsiveWeb>(_responsiveWeb);
  }

  void _responsiveMobile(
      ResponsiveMobile event, Emitter<ResponsiveState> emit) {
    emit(state.copyWith(screen: ResponsiveScreen.mobile));
  }

  void _responsiveWeb(ResponsiveWeb event, Emitter<ResponsiveState> emit) {
    emit(state.copyWith(screen: ResponsiveScreen.web));
  }
}
