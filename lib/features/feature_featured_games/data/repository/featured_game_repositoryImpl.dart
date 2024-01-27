import 'package:dio/dio.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_featured_games/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_featured_games/data/model/popular.dart';

import 'package:sportapp/features/feature_featured_games/domain/entities/featured_entity.dart';

import '../../domain/repository/featured_games_repository.dart';

class FeaturedGameRepositoryImpl extends FeaturedGameRepository{
  FeaturedGameApiProvider featuredGameApiProvider;

  FeaturedGameRepositoryImpl(this.featuredGameApiProvider);

  @override
  Future<DataState<FeaturedEntity>> fetchFeaturedGames() async {
    try{
      Response response = await featuredGameApiProvider.featuredFetch();
      if(response.statusCode == 200){
        FeaturedEntity featuredEntity = PopularMatches.fromJson(response.data);
        if(featuredEntity.event?.homeTeam?.sport?.name != "Football"){
        }
        
        return DataSuccess(featuredEntity);
      }
      else{
        return const DataFailed("Something Went Wrong!!");
      }
    }catch(e){
      return const DataFailed("Please Check Your Connection");
    }
  }

}