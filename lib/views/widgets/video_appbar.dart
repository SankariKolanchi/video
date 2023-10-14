import 'package:flutter/material.dart';
import 'package:video/views/themes/app_colors.dart';

class VideoAppbar extends StatelessWidget implements PreferredSizeWidget {
  const VideoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 25,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          color: AppColors.darkGreyColor,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/apptitle_logo.png",
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            "assets/images/appbar_logo.png",
            height: 23,
          ),
        ],
      ),
      actions: [
        const Icon(
          Icons.search,
          color: AppColors.lightGreyColor,
          size: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          "assets/images/sun.png",
          width: 20,
          height: 20,
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
