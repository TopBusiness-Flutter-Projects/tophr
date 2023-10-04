import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/app_colors.dart';

class menuTab extends StatelessWidget {
  const menuTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        height: 65.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.blue2,
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(64) ,bottomRight: Radius.circular(64))
        ),
        child: Column(
          children: [
            SizedBox(height:3.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 3.h),
              child: Row(children: [Text("menu".tr(),style: Theme.of(context).textTheme.displayLarge,)],),
            ),

          ],
        ),
      ),
    );
  }
}
