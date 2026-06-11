import 'package:dev/domain/datasources/video_posts_datasource.dart';
import 'package:dev/domain/entities/video_post.dart';
import 'package:dev/infrastructure/models/local_video_model.dart';
import 'package:dev/shared/data/local_video_posts.dart';

class LocalVideoDatasources implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideoByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
        
    return newVideos;
  }
}
