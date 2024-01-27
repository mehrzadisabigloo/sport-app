import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/core/usecase/use_case.dart';
import 'package:sportapp/features/feature_live_match/domain/repository/live_match_repository.dart';

import '../entities/live_match_entity.dart';
class LiveMatchUseCase extends UseCase<DataState<LiveMatchEntity>,String>{
  LiveMatchRepository liveMatchRepository;
  LiveMatchUseCase(this.liveMatchRepository);

  @override
  Future<DataState<LiveMatchEntity>> call(String param) {
    return liveMatchRepository.fetchLiveMatch();
  }


}