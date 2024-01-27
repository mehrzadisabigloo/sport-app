import 'package:dio/dio.dart';
import 'package:sportapp/core/utils/constant.dart';

class LineUpApiProvider{

  Future<dynamic> fetchLineUp(String eventId) async {
    var url = 'https://livescore-sports.p.rapidapi.com/v1/events/lineups';
    var queryParameters = {
      'locale': 'EN',
      'sport': 'soccer',
      'event_id': eventId.toString(),
    };

    var headers = {
      'X-RapidAPI-Key': Constant.apikey,
      'X-RapidAPI-Host': 'livescore-sports.p.rapidapi.com',
    };

    var dio = Dio();
    dio.options.headers.addAll(headers);
    Response response = await dio.get(url, queryParameters: queryParameters);
    print(response.data);
    return response;


  }

}