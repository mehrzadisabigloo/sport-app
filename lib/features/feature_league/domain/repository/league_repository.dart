import 'package:sportapp/features/feature_league/domain/entities/standing_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class LeagueRepository{

  Future<DataState<StandingEntity>> fetchLeague(id);

}