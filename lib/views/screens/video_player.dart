import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../models/all_videos_model.dart';
import '../../models/elements_wellness_model.dart';
import '../themes/app_text_style.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/element_wellness_list.dart';
import '../widgets/indicator_widget.dart';
import '../widgets/video_appbar.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
    _controller?.play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VideoAppbar(),
      drawer: const DrawerWidget(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: _controller!.value.isInitialized
                ? VideoPlayer(_controller!)
                : const Center(child: CircularProgressIndicator()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: ShareWidget(
              name: allVideosModel[0].name,
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: elementsWellnessModel2.length,
                  itemBuilder: (context, i) {
                    final item = elementsWellnessModel2[i];
                    return Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              item.image,
                              height: 185,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: Text(
                              item.name,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.mediumGreyW500TextStyle,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          IndicatorWidget(
            index: 0,
            count: elementsWellnessModel2.length,
          )
        ],
      ),
    );
  }
}
