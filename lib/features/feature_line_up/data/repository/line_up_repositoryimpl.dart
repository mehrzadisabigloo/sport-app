import 'package:dio/dio.dart';
import 'package:sportapp/core/resources/data_state.dart';
import 'package:sportapp/features/feature_line_up/data/data_source/remote/api_provider.dart';
import 'package:sportapp/features/feature_line_up/data/model/line_up_model.dart';
import 'package:sportapp/features/feature_line_up/domain/entities/line_up_entity.dart';
import 'package:sportapp/features/feature_line_up/domain/repository/line_up_repository.dart';

class LineUpRepositoryImpl extends LineUpRepository{
  LineUpApiProvider lineUpApiProvider;
  LineUpRepositoryImpl(this.lineUpApiProvider);

  @override
  Future<DataState<LineUpEntity>> fetchLineUp(String eventId) async {
    try{
      Response response = await lineUpApiProvider.fetchLineUp(eventId);
      if(response.statusCode == 200){
        LineUpEntity lineUpEntity = LineUpModel.fromJson(response.data);
        return DataSuccess(lineUpEntity);
      }
      else{
        return const DataFailed("Something Went Wrong");
      }
    }catch(e){
      return const DataFailed("Please Check Your Connection");
    }
  }

}