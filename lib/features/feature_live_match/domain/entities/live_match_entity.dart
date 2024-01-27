import 'package:equatable/equatable.dart';

import '../../data/model/League_Info.dart';

class LiveMatchEntity extends Equatable{

  final List<Data>? data;


  const LiveMatchEntity({this.data});

  @override

  List<Object?> get props => [

  ];


}