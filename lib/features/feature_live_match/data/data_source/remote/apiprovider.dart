import 'package:dio/dio.dart';
import 'package:sportapp/core/utils/constant.dart';

class LiveMatchApiProvider{

  Future<dynamic> liveMatches() async {
    const String url = 'https://livescore-sports.p.rapidapi.com/v1/events/live';
    const String apiKey = Constant.apikey;
    const String apiHost = 'livescore-sports.p.rapidapi.com';

    final dio = Dio();

    dio.options.headers = {
      'X-RapidAPI-Key': apiKey,
      'X-RapidAPI-Host': apiHost,
    };

    dio.options.queryParameters = {
      'locale': 'EN',
      'timezone': '0',
      'sport': 'soccer',
    };

    final response = await dio.get(url);
    return response;


  }


}