
import 'package:sportapp/features/feature_line_up/domain/entities/line_up_entity.dart';
import 'package:sportapp/features/feature_line_up/domain/repository/line_up_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../../../../core/usecase/use_case.dart';

class LineUpUseCase extends UseCase<DataState<LineUpEntity>,String>{
  LineUpRepository lineUpRepository;
  LineUpUseCase(this.lineUpRepository);

  @override
  Future<DataState<LineUpEntity>> call(String param) {
    return lineUpRepository.fetchLineUp(param);
  }
}