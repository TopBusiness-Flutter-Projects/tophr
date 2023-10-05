import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tophr/core/utils/app_assets.dart';

import '../../../core/utils/app_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                child:
                // Row(
                //   children: [
                    Text(
                      "welcome".tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),

                //   ],
                // ),

              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w,),
                child: Text(
                  "Mohammed Gad",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Center(
            child: Container(
              width: 90.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.blue2,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(8),
                  child: Image.asset(AssetsManager.topHrWhite,width: 20.w,),),
                  Text("صباح الثلاثاء 9:12:05 إلي 12:12:05 ",style: TextStyle(
                  fontWeight: FontWeight.w700,
                      color: AppColors.white,
                      fontSize: 12.sp
                  ))

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
