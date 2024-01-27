import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/core/usecase/use_case.dart';
import 'package:sportapp/features/feature_today_match/domain/entities/today_entity.dart';
import 'package:sportapp/features/feature_today_match/domain/repository/today_match_repository.dart';

class TodayMatchUseCase extends UseCase<DataState<TodayEntity>,String>{
  TodayMatchRepository todayMatchRepository;
  TodayMatchUseCase(this.todayMatchRepository);

  @override
  Future<DataState<TodayEntity>> call(String param) {
    return todayMatchRepository.fetchTodayMatch(param);
  }


}