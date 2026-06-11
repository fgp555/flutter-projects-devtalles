import 'package:dev/domain/entities/video_post.dart';
import 'package:dev/domain/repositories/video_post_repository.dart';
// import 'package:dev/infrastructure/models/local_video_model.dart';
// import 'package:dev/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  // todo: Repository, DataSource
  final VideoPostRepository videosRespository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRespository});

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();

    final newVideos = await videosRespository.getTrendingVideoByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;

    // todo: cargar videos
    notifyListeners();
  }
}
