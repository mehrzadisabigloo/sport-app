part of 'match_by_date_bloc.dart';

@immutable
abstract class MatchByDateEvent {
}

class MatchByDateToday extends MatchByDateEvent {
  final String daysDateTime = DaysDateTime().todayDate();
}

class MatchByDateTomorrow extends MatchByDateEvent{
  final String daysDateTime = DaysDateTime().tomorrowDate();
}

class MatchByDateYesterday extends MatchByDateEvent {
  final String daysDateTime = DaysDateTime().yesterdayDate();
}

class MatchByDateSearch extends MatchByDateEvent{
  final String date;
  MatchByDateSearch(this.date);
}
