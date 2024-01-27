import 'package:sportapp/features/feature_match_by_date/domain/entities/match_by_date_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class MatchByDateRepository{

  Future<DataState<MatchByDateEntity>> fetchMatchByDate(date);

}