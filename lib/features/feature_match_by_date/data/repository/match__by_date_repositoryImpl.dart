import 'package:dio/dio.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_match_by_date/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_match_by_date/data/model/match_by_date.dart';
import 'package:sportapp/features/feature_match_by_date/domain/entities/match_by_date_entity.dart';
import 'package:sportapp/features/feature_match_by_date/domain/repository/match_by_date_repository.dart';


class MatchByDateRepositoryImpl extends MatchByDateRepository{
  MatchByDateApiProvider matchByDateApiProvider;
  MatchByDateRepositoryImpl(this.matchByDateApiProvider);

  @override
  Future<DataState<MatchByDateEntity>> fetchMatchByDate(date) async {
    try{
      Response response = await matchByDateApiProvider.matchByDateFetch(date);
      if(response.statusCode == 200){
        MatchByDateEntity matchByDateEntity = MatchByDate.fromJson(response.data);
        for(int i = 0; i < matchByDateEntity.data!.length ; i++){
          if(matchByDateEntity.data?[i].events![0].matchstatus != "NS" && matchByDateEntity.data?[i].events![0].matchstatus != "FT"){
            matchByDateEntity.data?.removeAt(i);
          }
        }
        return DataSuccess(matchByDateEntity);
      }
      else{
        return const DataFailed("Something Went Wrong");
      }
    }catch(e){
      return const DataFailed("Please Check Your Connection");
    }
  }



}