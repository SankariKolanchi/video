import 'package:flutter/material.dart';
import 'package:video/views/screens/all_videos_screen.dart';

import '../../models/elements_wellness_model.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

class ElementsWellnessList extends StatelessWidget {
  const ElementsWellnessList({
    super.key,
    required this.elementsWellnessModel,
    required this.color,
  });

  final List<ElementsWellnessModel> elementsWellnessModel;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Elements Wellness ",
              style: AppTextStyle.blackF18FW500TextStyle,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.borderGreyColor)),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllVideosScreen()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "See All",
                      style: AppTextStyle.blackF14FW500TextStyle,
                    ),
                    SizedBox(width: 2),
                    Icon(Icons.more_horiz, size: 20)
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
              itemCount: elementsWellnessModel.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, i) {
                final item = elementsWellnessModel[i];
                return Container(
                  width: 300,
                  margin: const EdgeInsets.only(right: 18),
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
                      const SizedBox(height: 10),
                      ShareWidget(
                        name: item.name,
                        onTap: () {},
                      ),
                    ],
                  ),
                );
              }),
        )
      ]),
    );
  }
}

class ShareWidget extends StatelessWidget {
  const ShareWidget({
    super.key,
    required this.name,
    required this.onTap,
  });

  final String name;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: AppTextStyle.mediumGreyW500TextStyle,
          ),
        ),
        InkWell(
          onTap: () => onTap(),
          radius: 20,
          child: Row(
            children: [
              const Text(
                "Share",
                style: AppTextStyle.blackF14FW500TextStyle,
              ),
              const SizedBox(
                width: 4,
              ),
              Image.asset(
                "assets/images/share.png",
                height: 23,
                width: 23,
              )
            ],
          ),
        )
      ],
    );
  }
}
