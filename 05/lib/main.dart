import 'package:dev/config/theme/app_theme.dart';
import 'package:dev/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes no app',
      theme: AppTheme(selectedColor: 4).theme(),
      home: const ChatScreen(),
    );
  }
}
