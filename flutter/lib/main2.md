import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], name: json['name'], email: json['email']);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UsersPage(),
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
      // Cambia la IP por la de tu servidor
      baseUrl: 'http://192.168.18.22:3000',
    ),
  );

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  List<User> users = [];

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  Future<void> getUsers() async {
    try {
      final response = await dio.get('/users');

      users = (response.data as List)
          .map((json) => User.fromJson(json))
          .toList();

      setState(() {});
    } on DioException catch (e) {
      debugPrint(e.message);
    }
  }

  Future<void> createUser() async {
    await dio.post(
      '/users',
      data: {'name': nameController.text, 'email': emailController.text},
    );

    await getUsers();
  }

  Future<void> updateUser(int id) async {
    await dio.put(
      '/users/$id',
      data: {'name': nameController.text, 'email': emailController.text},
    );

    await getUsers();
  }

  Future<void> deleteUser(int id) async {
    await dio.delete('/users/$id');

    await getUsers();
  }

  Future<void> showUserDialog({User? user}) async {
    if (user == null) {
      nameController.clear();
      emailController.clear();
    } else {
      nameController.text = user.name;
      emailController.text = user.email;
    }

    await showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(user == null ? 'Nuevo usuario' : 'Editar usuario'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            FilledButton(
              onPressed: () async {
                if (user == null) {
                  await createUser();
                } else {
                  await updateUser(user.id);
                }

                if (mounted) {
                  Navigator.pop(context);
                }
              },
              child: Text(user == null ? 'Guardar' : 'Actualizar'),
            ),
          ],
        );
      },
    );
  }

  Future<void> confirmDelete(User user) async {
    await showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Eliminar usuario'),
          content: Text('¿Deseas eliminar a ${user.name}?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            FilledButton(
              onPressed: () async {
                await deleteUser(user.id);

                if (mounted) {
                  Navigator.pop(context);
                }
              },
              child: const Text('Eliminar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users CRUD')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showUserDialog(),
        child: const Icon(Icons.add),
      ),
      body: users.isEmpty
          ? const Center(child: Text('No hay usuarios'))
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];

                return ListTile(
                  leading: CircleAvatar(child: Text(user.id.toString())),
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => showUserDialog(user: user),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => confirmDelete(user),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
