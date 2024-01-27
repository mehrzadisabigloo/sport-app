part of 'line_up_bloc.dart';

@immutable
abstract class LineUpEvent {}

class LineUpCall extends LineUpEvent{
  final String eventId;
  final int choices;

  LineUpCall(this.eventId, this.choices);
}

