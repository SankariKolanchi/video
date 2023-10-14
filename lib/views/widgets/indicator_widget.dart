import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({super.key, required this.index, required this.count});

  final int index;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < count; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.darkGreyColor),
                  color: index == i ? AppColors.darkGreyColor : Colors.white,
                )),
          )
      ],
    );
  }
}
