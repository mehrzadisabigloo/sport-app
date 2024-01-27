part of 'team_next_match_bloc.dart';

@immutable
abstract class TeamNextMatchEvent {}

class NextMatchFetch extends TeamNextMatchEvent{
  final String teamID;

  NextMatchFetch(this.teamID);
}
