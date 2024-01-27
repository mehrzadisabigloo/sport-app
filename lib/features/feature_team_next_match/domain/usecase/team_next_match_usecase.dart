import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/core/usecase/use_case.dart';
import 'package:sportapp/features/feature_team_next_match/domain/entities/team_next_match_entity.dart';
import 'package:sportapp/features/feature_team_next_match/domain/repository/team_next_match_repository.dart';

class TeamNextMatchUseCase extends UseCase<DataState<TeamNextMatchEntity>,String>{
  TeamNextMatchRepository teamNextMatchRepository;

  TeamNextMatchUseCase(this.teamNextMatchRepository);

  @override
  Future<DataState<TeamNextMatchEntity>> call(String param) {
    return teamNextMatchRepository.fetchTeamNextMatch(param);
  }



}