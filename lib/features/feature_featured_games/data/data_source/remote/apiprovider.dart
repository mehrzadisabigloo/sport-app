import 'package:dio/dio.dart';

class FeaturedGameApiProvider {

  Future<dynamic> featuredFetch() async {
    var dio = Dio();
    dio.options.headers = {
      'X-RapidAPI-Key': 'dd2243e41cmsh5321157c7f39b50p168daajsn09b692ce5552',
      'X-RapidAPI-Host': 'sofasport.p.rapidapi.com'
    };

    var response = await dio.get('https://sofasport.p.rapidapi.com/v1/events/schedule/popular',
        queryParameters: {'locale': 'EN'}
    );

    return response;

  }



}