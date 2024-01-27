import 'package:equatable/equatable.dart';

import '../../../feature_match_by_date/data/model/match_by_date.dart';


class MatchByDateEntity extends Equatable{

  final List<Data>? data;

  const MatchByDateEntity({this.data});

  @override
  List<Object?> get props => [

  ];

}