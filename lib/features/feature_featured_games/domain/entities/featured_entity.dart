import 'package:equatable/equatable.dart';

import '../../data/model/popular.dart';


class FeaturedEntity extends Equatable{
  final Event? event;
  final num? type;
  final num? action;
  final String? actionValue;
  final String? reason;
  final num? createdBy;
  final num? reasonSuborder;
  final bool? visible;
  final bool? dismissible;
  final num? id;

  const FeaturedEntity(
  {
  this.event,
  this.type,
  this.action,
  this.actionValue,
  this.reason,
  this.createdBy,
  this.reasonSuborder,
  this.visible,
  this.dismissible,
  this.id
}
      );

  @override
  List<Object?> get props => [

  ];

}