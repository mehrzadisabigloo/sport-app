part of 'line_up_bloc.dart';

@immutable
abstract class LineUpState {}

class LineUpInitial extends LineUpState {}

class Loading extends LineUpState {}

class Loaded extends LineUpState {
  final LineUpEntity lineUpEntity;
  final int choices;

  Loaded(this.lineUpEntity, this.choices);
}

class Failed extends LineUpState {
  final String error;
  Failed(this.error);
}
