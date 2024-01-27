part of 'team_next_match_bloc.dart';

@immutable
abstract class TeamNextMatchState {}

class TeamNextMatchInitial extends TeamNextMatchState {}

class TeamNextMatchLoading extends TeamNextMatchState {}

class TeamNextMatchLoaded extends TeamNextMatchState {
   final TeamNextMatchEntity teamNextMatchEntity;

   TeamNextMatchLoaded(this.teamNextMatchEntity);
}

class TeamNextMatchFailed extends TeamNextMatchState {
   final String error;
   TeamNextMatchFailed(this.error);
}
