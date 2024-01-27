part of 'league_bloc.dart';

@immutable
abstract class LeagueEvent {}

class CallLeague extends LeagueEvent{
  final int competitionId;

  CallLeague(this.competitionId);
}
