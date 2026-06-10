import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();

  final response = await dio.get(
    'https://jsonplaceholder.typicode.com/users/1',
  );

  print(response.data);
}