import 'dart:io';

class SplashPageCheck{

  dynamic checkStatus() async {
    final result = await InternetAddress.lookup("Google.com");
    return result;
  }

}