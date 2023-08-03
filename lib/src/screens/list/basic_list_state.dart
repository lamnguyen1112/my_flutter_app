import 'package:equatable/equatable.dart';
import '../../domain/item_model.dart';

enum ListStatus { initial, success, failure }

class BasicListState extends Equatable {
  const BasicListState(
      {this.status = ListStatus.initial, this.items = const <ItemModel>[]});

  final ListStatus status;
  final List<ItemModel> items;

  BasicListState copyWith({ListStatus? status, List<ItemModel>? items}) {
    return BasicListState(
        status: status ?? this.status, items: items ?? this.items);
  }

  @override
  List<Object?> get props => [status, items];
}
