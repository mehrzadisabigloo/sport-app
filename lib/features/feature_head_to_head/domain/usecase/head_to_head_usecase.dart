import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/core/usecase/use_case.dart';
import 'package:sportapp/features/feature_head_to_head/domain/entities/head_to_head_entity3.dart';
import 'package:sportapp/features/feature_head_to_head/domain/repository/head_to_head_repository.dart';

class HeadToHeadUseCase extends UseCase<DataState<HeadToHeadEntity>, String>{
  final HeadToHeadRepository headRepository;
  HeadToHeadUseCase(this.headRepository);
  @override
  Future<DataState<HeadToHeadEntity>> call(String param) {
    return headRepository.fetchHeadToHead(param);
  }


}