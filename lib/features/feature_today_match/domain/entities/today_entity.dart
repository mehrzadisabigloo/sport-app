import 'package:equatable/equatable.dart';

import '../../data/model/Today.dart';

class TodayEntity extends Equatable{

  final List<Data>? data;


  const TodayEntity({this.data});

  @override
  List<Object?> get props => [

  ];

}