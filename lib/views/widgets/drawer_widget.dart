import 'package:flutter/material.dart';
import 'package:video/views/themes/app_text_style.dart';

import '../../models/drawer_model.dart';
import '../themes/app_colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 200,
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: AppColors.mediumBlueColor),
              child: Row(children: [
                Image.asset(
                  "assets/images/home.png",
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  "Home",
                  style: AppTextStyle.dimGreyF14W500TextStyle,
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(children: [
                Image.asset(
                  "assets/images/pink_star.png",
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  "Brands",
                  style: AppTextStyle.mediumPinkF14F500TextStyle,
                )
              ]),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: drawerModel.length,
                itemBuilder: (context, m) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(8),
                    child: Image.asset(
                      "assets/images/${drawerModel[m].image}.png",
                      height: 50,
                      width: 120,
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(children: [
                Image.asset(
                  "assets/images/video_palyer.png",
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  "Videos",
                  style: AppTextStyle.dimGreyF14W500TextStyle,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
