import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';
import 'indicator_widget.dart';
import '../../models/featured_playlist_model.dart';

class FeaturedPlayList extends StatefulWidget {
  const FeaturedPlayList({super.key});

  @override
  State<FeaturedPlayList> createState() => _FeaturedPlayListState();
}

class _FeaturedPlayListState extends State<FeaturedPlayList> {
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: Text(
            "Featured Playlist",
            style: AppTextStyle.blackF14W600TextStyle,
          ),
        ),
        SizedBox(
          height: 280,
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredPlayListModel.length,
              onPageChanged: (i){
                index = i;
                setState(() {

                });
              },
              itemBuilder: (context, i) {
                final item = featuredPlayListModel[i];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          item.image,
                          height: 215,
                          width: MediaQuery.of(context).size.width - 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.name,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.mediumGreyW500TextStyle,
                      ),
                    ],
                  ),
                );
              }),
        ),
        IndicatorWidget(
          index: index,
          count: featuredPlayListModel.length,
        )
      ],
    );
  }
}
