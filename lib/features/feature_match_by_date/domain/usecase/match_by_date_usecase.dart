import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/core/usecase/use_case.dart';
import 'package:sportapp/features/feature_match_by_date/domain/entities/match_by_date_entity.dart';
import 'package:sportapp/features/feature_match_by_date/domain/repository/match_by_date_repository.dart';

class MatchByDateUseCase extends UseCase<DataState<MatchByDateEntity>,String>{
  MatchByDateRepository matchByDateRepository;

  MatchByDateUseCase(this.matchByDateRepository);

  @override
  Future<DataState<MatchByDateEntity>> call(String param) {
    return matchByDateRepository.fetchMatchByDate(param);
  }


}