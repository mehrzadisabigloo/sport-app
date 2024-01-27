part of 'head_to_head_bloc.dart';

@immutable
abstract class HeadToHeadEvent {}

class FetchH2h extends HeadToHeadEvent{

  final String matchId;

  FetchH2h(this.matchId);
}
