import 'package:dev/config/theme/app_theme.dart';
import 'package:dev/presentation/providers/discover_provider.dart';
import 'package:dev/presentation/screens/discover/dicover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: "TokTik",
        theme: AppTheme().getTheme(),
        home: DicoverScreen(),
      ),
    );
  }
}
