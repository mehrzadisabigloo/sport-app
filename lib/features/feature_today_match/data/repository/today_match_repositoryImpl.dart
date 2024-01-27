import 'package:dio/dio.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_today_match/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_today_match/data/model/Today.dart';
import 'package:sportapp/features/feature_today_match/domain/entities/today_entity.dart';
import 'package:sportapp/features/feature_today_match/domain/repository/today_match_repository.dart';

class TodayMatchRepositoryImpl extends TodayMatchRepository{
  TodayMatchApiProvider todayMatchApiProvider;
  TodayMatchRepositoryImpl(this.todayMatchApiProvider);

  @override
  Future<DataState<TodayEntity>> fetchTodayMatch(date) async {
    try{
      Response response = await todayMatchApiProvider.todayFetch(date);
      if(response.statusCode == 200){
        TodayEntity todayEntity = Today.fromJson(response.data);
        for(int i = 0; i < todayEntity.data!.length; i++){
          if(todayEntity.data![i].events![0].matchstatus != "NS" && todayEntity.data![i].events![0].matchstatus != "FT"){
            todayEntity.data!.removeAt(i);
          }
        }
        return DataSuccess(todayEntity);
      }
      else{
        return const DataFailed("Something Went Wrong");
      }
    }catch(e){
      return const DataFailed("Please Check Your Connection");
    }
  }



}