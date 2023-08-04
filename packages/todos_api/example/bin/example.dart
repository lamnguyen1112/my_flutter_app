import 'package:todos_api/todos_api.dart';

void main() async {
  final client = TodosApi();
  // final todos = await client.todos();
  // print(todos.first.title);
  final todo = await client.todoWithId(10);
  print(todo?.title);
}
