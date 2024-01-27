part of 'today_match_bloc.dart';

@immutable
abstract class TodayMatchState {}

class TodayMatchInitial extends TodayMatchState {}

class TodayMatchLoading extends TodayMatchState {}

class TodayMatchLoaded extends TodayMatchState {
  final TodayEntity todayEntity;

  TodayMatchLoaded(this.todayEntity);
}

class TodayMatchFailed extends TodayMatchState {
  final String error;
  TodayMatchFailed(this.error);
}
