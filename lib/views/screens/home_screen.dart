import 'package:flutter/material.dart';
import 'package:video/models/elements_wellness_model.dart';
import 'package:video/views/themes/app_colors.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/element_wellness_list.dart';
import '../widgets/featured_playlist.dart';
import '../widgets/video_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VideoAppbar(),
      drawer: const DrawerWidget(),
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
                ),
              ),
            ),
            const FeaturedPlayList(),
            const SizedBox(height: 25),
            ElementsWellnessList(
              color: AppColors.darkPinkColor,
              elementsWellnessModel: elementsWellnessModel1,
            ),
            const SizedBox(height: 18),
            ElementsWellnessList(
              color: AppColors.lightGreenColor,
              elementsWellnessModel: elementsWellnessModel2,
            ),
          ],
        ),
      ),
    );
  }
}
