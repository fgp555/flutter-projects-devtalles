import 'package:dev/config/router/app_router.dart';
import 'package:dev/config/theme/app_theme.dart';
// import 'package:dev/presentation/screens/buttons/buttons_screen.dart';
// import 'package:dev/presentation/screens/cards/cards_screen.dart';
// import 'package:dev/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme(selectedColor: 2).getTheme(),
      // home: HomeScreen(),
      // routes: {
      //   '/buttons':(context) => ButtonsScreen(),
      //   '/cards':(context) => CardsScreen()
      // },
    );
  }
}
