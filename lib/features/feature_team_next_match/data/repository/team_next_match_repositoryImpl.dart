import 'package:dio/dio.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_team_next_match/data/data_source/remote/apiProvider.dart';
import 'package:sportapp/features/feature_team_next_match/data/model/team_next_match_jsn.dart';
import 'package:sportapp/features/feature_team_next_match/domain/entities/team_next_match_entity.dart';
import 'package:sportapp/features/feature_team_next_match/domain/repository/team_next_match_repository.dart';

class TeamNextMatchRepositoryImpl extends TeamNextMatchRepository{
  NextMatchApiProvider nextMatchApiProvider;
  TeamNextMatchRepositoryImpl(this.nextMatchApiProvider);

  @override
  Future<DataState<TeamNextMatchEntity>> fetchTeamNextMatch(teamId) async {
    try{
      Response response = await nextMatchApiProvider.nextMatch(teamId);
      if(response.statusCode == 200){
        TeamNextMatchEntity teamNextMatchEntity = TeamNextMatchJsn.fromJson(response.data);
        return DataSuccess(teamNextMatchEntity);
      }
      else{
        return const DataFailed("Something Went Wrong!!");
        
      }
    }catch(e){
      return const DataFailed("Please Check Your Connection");
    }
  }
  
}