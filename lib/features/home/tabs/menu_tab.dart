import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/custom_svg_images.dart';

class menuTab extends StatelessWidget {
  menuTab({super.key});

  final List<String> titles = [
    "change_language",
    "privacy",
    "contact_us",
    "change_options"
  ];
  final List<String> iconPath = [
    AssetsManager.languageIcon,
    AssetsManager.privacyIcon,
    AssetsManager.contactIcon,
    AssetsManager.optionsIcon
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        height: 65.h,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColors.blue2,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(64),
                bottomRight: Radius.circular(64))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
              child: Row(
                children: [
                  Text(
                    "menu".tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    height: 7.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.primary),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: MySvgWidget(
                            path: iconPath[index],
                            imageColor: AppColors.yellow,
                            size: 25,
                          ),
                        ),
                        Text(
                          titles[index].tr(),
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
