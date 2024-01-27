
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/core/utils/date.dart';
import 'package:sportapp/features/feature_today_match/domain/entities/today_entity.dart';

import '../../domain/usecase/today_match_usecase.dart';
part 'today_match_event.dart';
part 'today_match_state.dart';

class TodayMatchBloc extends Bloc<TodayMatchEvent, TodayMatchState> {
  final TodayMatchUseCase todayMatchUseCase;
  TodayMatchBloc(this.todayMatchUseCase) : super(TodayMatchLoading()) {
    on<TodayMatchesFetch>((event, emit) async {
      emit(TodayMatchLoading());
      DataState dataState = await todayMatchUseCase(event.day);
      if(dataState is DataSuccess){
        emit(TodayMatchLoaded(dataState.data));
      }

      else {
        emit(TodayMatchFailed(dataState.error.toString()));
      }

    });
  }
}
