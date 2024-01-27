import 'package:sportapp/features/feature_today_match/domain/entities/today_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class TodayMatchRepository{

  Future<DataState<TodayEntity>> fetchTodayMatch(date);

}