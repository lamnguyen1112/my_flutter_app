import 'package:dio/dio.dart';
import 'package:todos_api/src/model/todo.dart';

class TodosApi {
  final _dio = Dio(BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      sendTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 30)))
    ..interceptors.add(LogInterceptor(responseBody: true));

  TodosApi();

  // Future
  Future<List<Todo>> todos() async {
    try {
      final response = await _dio.get('/todos');
      final data = response.data as List;
      final todos = data.map((e) => Todo.fromJson(e)).toList();

      return todos;
    } on Error {
      return [];
    }
  }

  Future<Todo?> todoWithId(int id) async {
    try {
      final response = await _dio.get('/todos/$id');
      final json = response.data;
      final todo = Todo.fromJson(json);

      return todo;
    } on Error {
      return null;
    }
  }
}
