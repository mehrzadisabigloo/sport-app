import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/core/utils/date.dart';
import 'package:sportapp/features/feature_match_by_date/domain/entities/match_by_date_entity.dart';
import '../../domain/usecase/match_by_date_usecase.dart';


part 'match_by_date_event.dart';
part 'match_by_date_state.dart';

class MatchByDateBloc extends Bloc<MatchByDateEvent, MatchByDateState> {
  final MatchByDateUseCase matchByDateUseCase;
  MatchByDateBloc(this.matchByDateUseCase) : super(MatchByDateLoading()) {

    on<MatchByDateEvent>((event, emit) async {
      if(event is MatchByDateToday){
        emit(MatchByDateLoading());
        DataState dataState = await matchByDateUseCase(event.daysDateTime);
        if(dataState is DataSuccess){
          emit(MatchByDateLoaded(dataState.data,"Today"));
        }

        else {
          emit(MatchByDateFailed(dataState.error.toString()));
        }
      }
      if(event is MatchByDateSearch){
        emit(MatchByDateLoading());
        DataState dataState = await matchByDateUseCase(event.date);
        if(dataState is DataSuccess){
          emit(MatchByDateLoaded(dataState.data,event.date));
        }
        else {
          emit(MatchByDateFailed(dataState.error.toString()));
        }
      }
      if(event is MatchByDateTomorrow){
        emit(MatchByDateLoading());
        DataState dataState = await matchByDateUseCase(event.daysDateTime);
        if(dataState is DataSuccess){
          emit(MatchByDateLoaded(dataState.data,"Tomorrow"));
        }

        else {
          emit(MatchByDateFailed(dataState.error.toString()));
        }
      }

      if(event is MatchByDateYesterday){
        emit(MatchByDateLoading());
        DataState dataState = await matchByDateUseCase(event.daysDateTime);
        if(dataState is DataSuccess){
          emit(MatchByDateLoaded(dataState.data,"Yesterday"));
        }

        else {
          emit(MatchByDateFailed(dataState.error.toString()));
        }
      }
    });
  }
}
