

import 'package:sportapp/features/feature_line_up/domain/entities/line_up_entity.dart';

import '../../../../core/resources/data_state.dart';

abstract class LineUpRepository{

  Future<DataState<LineUpEntity>> fetchLineUp(String eventId);

}