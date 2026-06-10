import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class User {
  final int id;
  final String name;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UsersPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.18.22:3000',
    ),
  );

  List<User> users = [];

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  Future<void> getUsers() async {
    final response = await dio.get('/users');

    users = (response.data as List)
        .map((json) => User.fromJson(json))
        .toList();

    setState(() {});
  }

  Future<void> createUser() async {
    await dio.post(
      '/users',
      data: {
        'name': 'Nuevo usuario',
        'email': 'nuevo@email.com',
      },
    );

    getUsers();
  }

  Future<void> updateUser(int id) async {
    await dio.put(
      '/users/$id',
      data: {
        'name': 'Usuario actualizado',
      },
    );

    getUsers();
  }

  Future<void> deleteUser(int id) async {
    await dio.delete('/users/$id');

    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users CRUD'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createUser,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.email),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => updateUser(user.id),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => deleteUser(user.id),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}