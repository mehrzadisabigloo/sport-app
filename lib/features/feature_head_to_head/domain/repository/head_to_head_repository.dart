import 'package:sportapp/features/feature_head_to_head/domain/entities/head_to_head_entity3.dart';

import '../../../../core/resources/data_state.dart';

abstract class HeadToHeadRepository{

  Future<DataState<HeadToHeadEntity>> fetchHeadToHead(matchId);

}