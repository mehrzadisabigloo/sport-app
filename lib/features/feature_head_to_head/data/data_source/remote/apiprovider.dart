import 'package:dio/dio.dart';
import 'package:sportapp/core/utils/constant.dart';

class HeadToHeadApiProvider{

  Future<dynamic> headToHeadFetch(matchId) async {
    Dio dio = Dio();
      Response response = await dio.get(
        'https://livescore-sports.p.rapidapi.com/v1/events/h2h',
        queryParameters: {
          'sport': 'soccer',
          'event_id': matchId,
          'locale': 'EN',
        },
        options: Options(
          headers: {
            'X-RapidAPI-Key': Constant.apikey,
            'X-RapidAPI-Host': 'livescore-sports.p.rapidapi.com',
          },
        ),
      );
        print(response.data);
        return response;
  }
}
