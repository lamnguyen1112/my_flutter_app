import 'package:equatable/equatable.dart';

abstract class ListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingEvent extends ListEvent {}

class GetListEvent extends ListEvent {}
