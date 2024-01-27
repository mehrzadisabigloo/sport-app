part of 'live_match_bloc.dart';

@immutable
abstract class LiveMatchState {}

class LiveMatchInitial extends LiveMatchState {}

class LiveMatchLoading extends LiveMatchState {}

class LiveMatchLoaded extends LiveMatchState {
  final LiveMatchEntity liveMatchEntity;

  LiveMatchLoaded(this.liveMatchEntity);
}

class LiveMatchFailed extends LiveMatchState {
  final String error;
  LiveMatchFailed(this.error);
}
