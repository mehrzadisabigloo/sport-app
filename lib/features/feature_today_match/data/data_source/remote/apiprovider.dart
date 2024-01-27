import 'package:dio/dio.dart';
import 'package:sportapp/core/utils/constant.dart';

class TodayMatchApiProvider{

  Future<dynamic> todayFetch(date) async {
    final dio = Dio();
    final options = BaseOptions(
      baseUrl: 'https://livescore-sports.p.rapidapi.com/v1',
      headers: {
        'X-RapidAPI-Key': Constant.apikey,
        'X-RapidAPI-Host': 'livescore-sports.p.rapidapi.com',
      },
      queryParameters: {
        'date': date,
        'locale': 'EN',
        'timezone': '0',
        'sport': 'soccer',
      },
    );

    dio.options = options;
    final response = await dio.get('/events/list');
    return response;

  }

}