
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_league/domain/entities/standing_entity.dart';
import '../../domain/usecase/league_usecase.dart';
part 'league_event.dart';
part 'league_state.dart';
class LeagueBloc extends Bloc<LeagueEvent, LeagueState> {
  final LeagueUseCase leagueUseCase;
  LeagueBloc(this.leagueUseCase) : super(Loading()) {
    on<CallLeague>((event, emit) async {
      emit(Loading());
      DataState dataState = await leagueUseCase(event.competitionId.toString());
      if(dataState is DataSuccess){
        emit(Loaded(dataState.data));
      }
      else{
        emit(Failed(dataState.error.toString()));
      }
    }
    );
  }
}
