import 'package:equatable/equatable.dart';
import 'package:sportapp/features/feature_head_to_head/data/model/heahtohead.dart';


class HeadToHeadEntity extends Equatable{
  final Data? data;

  const HeadToHeadEntity({this.data});

  @override
  List<Object?> get props => [
    data
  ];


}