import 'package:dev/domain/entities/video_post.dart';
import 'package:dev/presentation/widgets/video/fullscreen_player.dart';
import 'package:dev/presentation/widgets/shared/video_buttons.dart';
import 'package:flutter/material.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    // return PageView(
    //   scrollDirection: Axis.vertical,
    //   physics: BouncingScrollPhysics(),
    //   children: [
    //     Container(color: Colors.red),
    //     Container(color: Colors.blue),
    //     Container(color: Colors.teal),
    //     Container(color: Colors.yellow),
    //     Container(color: Colors.pink),
    //     Container(color: Colors.deepPurple),
    //   ],
    // );
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            // video player + gradient
            SizedBox.expand(
              child: FullscreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),

            // buttons
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            ),
          ],
        );
      },
    );
  }
}
