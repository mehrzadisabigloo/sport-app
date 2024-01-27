import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_line_up/domain/entities/line_up_entity.dart';

import '../../domain/usecase/line_up_usecase.dart';

part 'line_up_event.dart';
part 'line_up_state.dart';

class LineUpBloc extends Bloc<LineUpEvent, LineUpState> {
  LineUpUseCase lineUpUseCase;
  LineUpBloc(this.lineUpUseCase) : super(Loading()) {
    on<LineUpCall>((event, emit) async {
      emit(Loading());
      DataState dataState = await lineUpUseCase(event.eventId.toString());

      if(dataState is DataSuccess){
        emit(Loaded(dataState.data,event.choices));
      }
      else{
        emit(Failed(dataState.error.toString()));
      }

    });
  }
}
