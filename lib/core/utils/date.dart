import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DaysDateTime{

  String todayDate(){
    final date = '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';
    return date;
  }
  String yesterdayDate(){
    final date = '${DateTime.now().subtract(const Duration(days: 1)).year}-${DateTime.now().subtract(const Duration(days: 1)).month}-${DateTime.now().subtract(const Duration(days: 1)).day}';
    return date;
  }
  String tomorrowDate(){
    final date = '${DateTime.now().add(const Duration(days: 1)).year}-${DateTime.now().add(const Duration(days: 1)).month}-${DateTime.now().add(const Duration(days: 1)).day}';
    return date;
  }
  String formattedTime(String timestamp,context){

    int hour = int.parse(timestamp.substring(8, 10));
    int minute = int.parse(timestamp.substring(10, 12));
    TimeOfDay timeOfDay = TimeOfDay(hour: hour, minute: minute);
    String formattedTime = timeOfDay.format(context);
    return formattedTime;
  }

  String formattedDateTime(timestamp){
    int year = int.parse(timestamp.substring(0, 4));
    int month = int.parse(timestamp.substring(4, 6));
    int day = int.parse(timestamp.substring(6, 8));
    DateTime dateTime = DateTime(year, month, day);
    String formattedDateTime = DateFormat('yyyy-MM-dd').format(dateTime);
    return formattedDateTime;
  }

}