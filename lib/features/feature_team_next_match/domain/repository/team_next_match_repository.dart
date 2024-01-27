import 'package:sportapp/features/feature_team_next_match/domain/entities/team_next_match_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class TeamNextMatchRepository{

  Future<DataState<TeamNextMatchEntity>> fetchTeamNextMatch(teamId);

}