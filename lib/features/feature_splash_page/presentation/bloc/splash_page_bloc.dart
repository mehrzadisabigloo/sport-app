import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportapp/features/feature_splash_page/data/data_source/remote/status_checking.dart';

part 'splash_page_event.dart';
part 'splash_page_state.dart';

class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState> {
  SplashPageBloc() : super(Checking()) {
    on<Check>((event, emit) async {
      try{
        SplashPageCheck splashPageCheck = SplashPageCheck();
        var result = await splashPageCheck.checkStatus();
        if(result.isNotEmpty && result[0].rawAddress.isNotEmpty){
          emit(Online());
        }
      }on SocketException catch (_){
        emit(Offline());
      }
    });
  }
}
