import 'package:flutter/material.dart';
import 'package:video/models/all_videos_model.dart';
import 'package:video/views/screens/video_player.dart';
import 'package:video/views/themes/app_text_style.dart';
import 'package:video/views/widgets/video_appbar.dart';

import '../themes/app_colors.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/element_wellness_list.dart';

class AllVideosScreen extends StatelessWidget {
  const AllVideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VideoAppbar(),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.lightBluecolor),
            child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                    text: 'All Videos [',
                    style: AppTextStyle.blackTextStyle,
                    children: [
                      TextSpan(
                          text: "128",
                          style: AppTextStyle.darkRedF18W400TextStyle),
                      TextSpan(
                        text: " ]",
                      )
                    ])),
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: allVideosModel.length,
                itemBuilder: (context, i) {
                  final item = allVideosModel[i];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VideoPlayerScreen()));
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      elevation: 0.5,
                      child: Column(children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(item.image)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 16),
                          child: ShareWidget(
                            name: item.name,
                            onTap: () {},
                          ),
                        ),
                      ]),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
