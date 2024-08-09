import 'package:flutter_bloc/flutter_bloc.dart';

abstract class PartnerEvent {}

abstract class PartnerState {}

class PartnerInitial extends PartnerState {}

class PartnerOne extends PartnerState {}

class PartnerTwo extends PartnerState {}

class PartnerThree extends PartnerState {} // Add this line

class GoToPartnerOneEvent extends PartnerEvent {}

class GoToPartnerTwoEvent extends PartnerEvent {}

class GoToPartnerThreeEvent extends PartnerEvent {} // Add this line

class PartnerBloc extends Bloc<PartnerEvent, PartnerState> {
  PartnerBloc() : super(PartnerInitial()) {
    on<GoToPartnerOneEvent>((event, emit) => emit(PartnerOne()));
    on<GoToPartnerTwoEvent>((event, emit) => emit(PartnerTwo()));
    on<GoToPartnerThreeEvent>(
        (event, emit) => emit(PartnerThree())); // Add this line
  }
}
