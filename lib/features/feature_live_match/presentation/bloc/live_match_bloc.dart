
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_live_match/domain/entities/live_match_entity.dart';
import '../../domain/usecase/live_match_usecase.dart';






part 'live_match_state.dart';
part 'live_match_event.dart';

class LiveMatchBloc extends Bloc<LiveMatchEvent, LiveMatchState> {
  final LiveMatchUseCase liveMatchUseCase;
  LiveMatchBloc(this.liveMatchUseCase) : super(LiveMatchLoading()) {
      on<LiveMatchesFetch>((event, emit) async {
        emit(LiveMatchLoading());
        DataState dataState = await liveMatchUseCase("");
        if(dataState is DataSuccess){
          emit(LiveMatchLoaded(dataState.data));
        }
        else {
          emit(LiveMatchFailed(dataState.error.toString()));
        }

      });
  }
}
