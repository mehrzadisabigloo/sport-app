import 'package:sportapp/features/feature_live_match/domain/entities/live_match_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class LiveMatchRepository{

  Future<DataState<LiveMatchEntity>> fetchLiveMatch();

}