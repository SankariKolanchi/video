import 'package:flutter/material.dart';
import 'package:video/themes/app_text_style.dart';

import '../widgets/video_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VideoAppbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 18, bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  "assets/images/banner.png",
                  height: 150,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Featured Playlist",
                    style: AppTextStyle.blackTextStyle,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      "assets/images/spirulina.png",
                      height: 215,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
