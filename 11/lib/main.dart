import 'package:dev/config/router/app_router.dart';
import 'package:dev/config/theme/app_theme.dart';
import 'package:dev/presentation/providers/theme_provider.dart';
// import 'package:dev/presentation/screens/buttons/buttons_screen.dart';
// import 'package:dev/presentation/screens/cards/cards_screen.dart';
// import 'package:dev/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkmode = ref.watch(isDarkmodeProvider);
    // final selectedColor = ref.watch(selectedColorProvider);

    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      // theme: AppTheme(
      //   selectedColor: selectedColor,
      //   isDarkmode: isDarkmode,
      // ).getTheme(),
      theme: appTheme.getTheme(),
      // home: HomeScreen(),
      // routes: {
      //   '/buttons':(context) => ButtonsScreen(),
      //   '/cards':(context) => CardsScreen()
      // },
    );
  }
}
