import 'package:dio/dio.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_head_to_head/data/data_source/remote/apiprovider.dart';
import 'package:sportapp/features/feature_head_to_head/data/model/heahtohead.dart';
import 'package:sportapp/features/feature_head_to_head/domain/entities/head_to_head_entity3.dart';
import 'package:sportapp/features/feature_head_to_head/domain/repository/head_to_head_repository.dart';

class HeadToHeadRepositoryImpl extends HeadToHeadRepository{

  HeadToHeadApiProvider headApiProvider;


  HeadToHeadRepositoryImpl(this.headApiProvider);

  @override
  Future<DataState<HeadToHeadEntity>> fetchHeadToHead(matchId) async {
    try{
      Response response = await headApiProvider.headToHeadFetch(matchId);
      if(response.statusCode == 200){
        HeadToHeadEntity headToHeadEntity = HeadToHead.fromJson(response.data);
        return DataSuccess(headToHeadEntity);

      }
      else{
        return const DataFailed("Something Went Wrong");
      }
    }catch(e){
      return const DataFailed("Please Check Your Connection");
    }


  }


}