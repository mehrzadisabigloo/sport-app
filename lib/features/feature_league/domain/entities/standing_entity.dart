import 'package:equatable/equatable.dart';

import '../../data/model/hi.dart';

class StandingEntity extends Equatable{

  final List<Data>? data;

  const StandingEntity({this.data});

  @override
  List<Object?> get props => [
    data
  ];


}