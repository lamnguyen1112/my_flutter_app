import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'basic_list_bloc.dart';
import 'basic_list_event.dart';
import 'basic_list_state.dart';

class BasicListPage extends StatelessWidget {
  const BasicListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasicListBloc(),
      child: const BasicListView(),
    );
  }
}

class BasicListView extends StatefulWidget {
  const BasicListView({super.key});

  @override
  State<BasicListView> createState() => _BasicListViewState();
}

class _BasicListViewState extends State<BasicListView> {
  BasicListBloc get _bloc => context.read<BasicListBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic List')),
      body: BlocBuilder<BasicListBloc, BasicListState>(
        builder: (context, state) {
          if (state.status == ListStatus.initial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == ListStatus.failure) {
            return const Center(
              child: Text('Empty'),
            );
          }

          final items = state.items;
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                title: Text(item.name),
                subtitle: Text(item.description),
              );
            },
          );
        },
      ),
    );
  }
}
