import 'package:dio/dio.dart';
import 'package:sportapp/core/utils/constant.dart';

class NextMatchApiProvider{
  Future<dynamic> nextMatch(teamId) async {
    const String url = 'https://livescore-sports.p.rapidapi.com/v1/teams/next-events';
    const String apiKey = Constant.apikey;
    const String apiHost = 'livescore-sports.p.rapidapi.com';

    final dio = Dio();

    dio.options.headers = {
      'X-RapidAPI-Key': apiKey,
      'X-RapidAPI-Host': apiHost,
    };

    dio.options.queryParameters = {
      'timezone': '0',
      'team_id': teamId,
      'locale': 'EN',
    };

      final response = await dio.get(url);
        print(response.data);
        return response;

  }


}
