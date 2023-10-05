import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';

class NewsTab extends StatelessWidget {
  const NewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
            child: Row(
              children: [
                Text(
                  "news".tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),

              ],
            ),

          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Divider(color: AppColors.white.withOpacity(.3),thickness: 1.5,),
          ),
          Expanded(
            // height: 80.h,
            child: ListView.separated(
                padding: EdgeInsets.only(top: 13),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      const SizedBox(width: 8,),

                      Image.asset(AssetsManager.mobile,width: 20.w,),
                      const SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        //  SizedBox(height: 1.h,),
                          Text("تحديث جديد لاعدادات الحساب",style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 2.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("12/5/2023",style: TextStyle(
                                  fontSize: 7.sp,
                                  color: AppColors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.w600
                              ),),
                              SizedBox(width: 50.w,),
                              Text("المسؤل",style: TextStyle(
                                  fontSize: 7.sp,
                                  color: AppColors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                        ],
                      )
                    ],
                  );
                }, separatorBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Divider(color: AppColors.white.withOpacity(.3),thickness: 1.5,),
              );
            }, itemCount: 5),
          )
        ],
      ),
    );
  }
}
