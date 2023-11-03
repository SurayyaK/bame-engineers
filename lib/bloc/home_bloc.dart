import 'package:flutter_bloc/flutter_bloc.dart';

// Event
abstract class HomeEvent {}

class SwipeUpEvent extends HomeEvent {}

class SwipeDownEvent extends HomeEvent {}

class GoToHomeTwoEvent extends HomeEvent {} // New event

// State
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeTwo extends HomeState {}

class GoToHomeInitialEvent extends HomeEvent {}

class HomeThree extends HomeState {}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<SwipeUpEvent>((event, emit) {
      if (state is HomeInitial) {
        emit(HomeThree());
      }
    });

    on<SwipeDownEvent>((event, emit) {
      if (state is HomeThree) {
        emit(HomeInitial());
      }
    });

    on<GoToHomeTwoEvent>((event, emit) {
      // Handle the new event
      emit(HomeTwo());
    });
    on<GoToHomeInitialEvent>((event, emit) {
      emit(HomeInitial());
    });
  }

  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is SwipeUpEvent) {
      if (state is HomeInitial) {
        yield HomeThree();
      } else if (state is HomeThree) {
        yield HomeInitial();
      }
    }
    // Handle other events...
  }
}
