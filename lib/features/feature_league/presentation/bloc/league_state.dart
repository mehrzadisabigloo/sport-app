part of '../../../feature_league/presentation/bloc/league_bloc.dart';

@immutable
abstract class LeagueState {}

class LeagueInitial extends LeagueState {}

class Loading extends LeagueState {}

class Loaded extends LeagueState {
  final StandingEntity standingEntity;

  Loaded(this.standingEntity);
}

class Failed extends LeagueState {
  final String error;
  Failed(this.error);
}
