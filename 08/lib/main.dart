import 'package:dev/config/theme/app_theme.dart';
import 'package:dev/infrastructure/datasources/local_video_datasources.dart';
import 'package:dev/infrastructure/repositories/video_posts_repository_impl.dart';
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
    final videoPostResposity = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideoDatasources(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              DiscoverProvider(videosRespository: videoPostResposity)
                ..loadNextPage(),
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
