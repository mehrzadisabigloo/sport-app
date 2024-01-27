
import 'package:dio/dio.dart';
import 'package:sportapp/core/utils/constant.dart';

class LeagueApiProvider{
  Future<dynamic> standing(id) async {

    const String url = 'https://livescore-sports.p.rapidapi.com/v1/competitions/standings';
    final Map<String, dynamic> queryParams = {
      'timezone': '0',
      'competition_id': id,
      'locale': 'EN',
    };

    final Map<String, dynamic> headers = {
      'X-RapidAPI-Key': Constant.apikey,
      'X-RapidAPI-Host': 'livescore-sports.p.rapidapi.com',
    };

      final dio = Dio();
      final response = await dio.get(
        url,
        queryParameters: queryParams,
        options: Options(headers: headers),
      );

        print(response.data["DATA"][0]["LEAGUE_TABLE"]["L"][0]["TABLES"][0]["TEAM"]);
        return response;

  }
}