
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_head_to_head/domain/entities/head_to_head_entity3.dart';
import '../../domain/usecase/head_to_head_usecase.dart';
part 'head_to_head_event.dart';
part 'head_to_head_state.dart';

class HeadToHeadBloc extends Bloc<HeadToHeadEvent, HeadToHeadState> {
  final HeadToHeadUseCase headToHeadUseCase;
  HeadToHeadBloc(this.headToHeadUseCase) : super(HeadToHeadLoading()) {
    on<FetchH2h>((event, emit) async {
      emit(HeadToHeadLoading());
      DataState dataState = await headToHeadUseCase(event.matchId);
      if(dataState is DataSuccess){
        emit(HeadToHeadLoaded(dataState.data));
      }
      else{
        emit(HeadToHeadFailed(dataState.error.toString()));
      }
    });
  }
}
