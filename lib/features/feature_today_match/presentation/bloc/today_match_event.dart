part of 'today_match_bloc.dart';

@immutable
abstract class TodayMatchEvent {}



class TodayMatchesFetch extends TodayMatchEvent{
  final String day = DaysDateTime().todayDate();
}

