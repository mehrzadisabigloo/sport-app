
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_team_next_match/domain/entities/team_next_match_entity.dart';

import '../../domain/usecase/team_next_match_usecase.dart';

part 'team_next_match_event.dart';
part 'team_next_match_state.dart';

class TeamNextMatchBloc extends Bloc<TeamNextMatchEvent, TeamNextMatchState> {
  final TeamNextMatchUseCase teamNextMatchUseCase;
  TeamNextMatchBloc(this.teamNextMatchUseCase) : super(TeamNextMatchInitial()) {
    on<NextMatchFetch>((event, emit) async {
      emit(TeamNextMatchLoading());
      DataState dataState = await teamNextMatchUseCase(event.teamID);
      if(dataState is DataSuccess){
        emit(TeamNextMatchLoaded(dataState.data));
      }
      else{
        emit(TeamNextMatchFailed(dataState.error.toString()));
      }
    }
    );
  }
}
