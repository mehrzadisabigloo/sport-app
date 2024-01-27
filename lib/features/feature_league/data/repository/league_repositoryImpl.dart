import 'package:dio/dio.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_league/data/data_source/remote/apiProvider.dart';
import 'package:sportapp/features/feature_league/data/model/hi.dart';
import 'package:sportapp/features/feature_league/domain/entities/standing_entity.dart';
import 'package:sportapp/features/feature_league/domain/repository/league_repository.dart';

class LeagueRepositoryImpl extends LeagueRepository{

  LeagueApiProvider leagueApiProvider;
  LeagueRepositoryImpl(this.leagueApiProvider);

  @override
  Future<DataState<StandingEntity>> fetchLeague(id) async {

    try{
      Response response = await leagueApiProvider.standing(id);
      if(response.statusCode == 200){
        StandingEntity standingEntity = Standing.fromJson(response.data);
        return DataSuccess(standingEntity);
      }
      else{
        return const DataFailed("SomeThing Went Wrong");
      }
    }catch(e){
      return const DataFailed("Please Check Your Connection");

    }

  }

}