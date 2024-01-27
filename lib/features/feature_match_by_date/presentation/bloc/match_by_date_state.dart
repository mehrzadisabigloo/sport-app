part of 'match_by_date_bloc.dart';

@immutable
abstract class MatchByDateState {}

class MatchByDateInitial extends MatchByDateState {}

class MatchByDateLoading extends MatchByDateState {}

class MatchByDateLoaded extends MatchByDateState {
  final MatchByDateEntity matchByDateEntity;
  final String day;

  MatchByDateLoaded(this.matchByDateEntity, this.day);
}

class MatchByDateFailed extends MatchByDateState {
  final String error;
  MatchByDateFailed(this.error);
}
