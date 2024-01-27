import 'package:dio/dio.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_live_match/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_live_match/data/model/Live.dart';

import 'package:sportapp/features/feature_live_match/domain/entities/live_match_entity.dart';

import '../../domain/repository/live_match_repository.dart';

class LiveMatchRepositoryImpl extends LiveMatchRepository{
  LiveMatchApiProvider liveMatchApiProvider;
  LiveMatchRepositoryImpl(this.liveMatchApiProvider);

  @override
  Future<DataState<LiveMatchEntity>> fetchLiveMatch() async {

    try{
      Response response = await liveMatchApiProvider.liveMatches();
      if(response.statusCode == 200){
        LiveMatchEntity liveMatchEntity = Live.fromJson(response.data);
        return DataSuccess(liveMatchEntity);
      }
      else{
        return const DataFailed("Something Went Wrong");
      }
    }catch(e){
      return const DataFailed("Please Check Your Connection");
    }
  }


}