import 'package:sportapp/core/usecase/use_case.dart';
import 'package:sportapp/features/feature_league/domain/entities/standing_entity.dart';
import 'package:sportapp/features/feature_league/domain/repository/league_repository.dart';

import '../../../../core/resources/data_state.dart';

class LeagueUseCase extends UseCase<DataState<StandingEntity>, String>{
  LeagueRepository leagueRepository;
  LeagueUseCase(this.leagueRepository);

  @override
  Future<DataState<StandingEntity>> call(String param) {
    return leagueRepository.fetchLeague(param);
  }


}