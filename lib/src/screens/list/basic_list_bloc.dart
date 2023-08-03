import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'basic_list_event.dart';
import 'basic_list_state.dart';
import 'package:flutter/services.dart';
import '../../domain/item_model.dart';
import '../../domain/list_response.dart';

class BasicListBloc extends Bloc<ListEvent, BasicListState> {
  final log = Logger();

  BasicListBloc() : super(const BasicListState()) {
    on<GetListEvent>(
      (event, emit) async {
        await Future.delayed(const Duration(seconds: 3));
        // loading from json file
        final items = await readJson();
        // add(GetListEvent(items: items));
        emit(BasicListState(status: ListStatus.success, items: items));
      },
    );
  }

  Future<List<ItemModel>> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    // final data = await json.decode(response);
    log.i(response);
    final res = listResponseFromJson(response);
    return res.items;
  }
}
