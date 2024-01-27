part of '../../../feature_head_to_head/presentation/bloc/head_to_head_bloc.dart';

@immutable
abstract class HeadToHeadState {}

class HeadToHeadInitial extends HeadToHeadState {}

class HeadToHeadLoading extends HeadToHeadState {}

class HeadToHeadLoaded extends HeadToHeadState {
  final HeadToHeadEntity headToHeadEntity;
  HeadToHeadLoaded(this.headToHeadEntity);
}

class HeadToHeadFailed extends HeadToHeadState {
  final String error;
  HeadToHeadFailed(this.error);
}
