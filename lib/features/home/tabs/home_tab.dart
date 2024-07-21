import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:tophr/config/routes/app_routes.dart';
import 'package:tophr/core/utils/app_assets.dart';
import 'package:tophr/core/widgets/custom_button.dart';
import 'package:tophr/features/home/cubit/home_cubit.dart';

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
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
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
              height: 28.h,
              decoration: BoxDecoration(
                  color: AppColors.blue2,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      AssetsManager.topHrWhite,
                      width: 20.w,
                    ),
                  ),
                  Text("صباح الثلاثاء 9:12:05 إلي 12:12:05 ",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                          fontSize: 12.sp)),
                  //SizedBox(height: 10,),
                  BlocBuilder<HomeCubit, HomeState>(
                   builder: (context, state) {
                     HomeCubit cubit = context.read<HomeCubit>();
                   return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                          width: 27.w,
                          backgroundColor:
                              cubit.isPresence?
                          AppColors.green:AppColors.red,
                          textColor: AppColors.white,
                          text:
                          cubit.isPresence?
                          "presence".tr():
                          "departure".tr(),
                          onPressed: () {
                            cubit.changePresenceButton();
                          }),
                      Column(
                        children: [
                          Text(
                            "presence",
                            style: TextStyle(
                                fontSize: 10.sp, color: AppColors.green),
                          ).tr(),
                          Text(
                            "09:12:05",
                            style: TextStyle(
                                fontSize: 10.sp, color: AppColors.white),
                          ).tr(),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "departure",
                            style: TextStyle(
                                fontSize: 10.sp, color: AppColors.red),
                          ).tr(),
                          Text(
                            cubit.isPresence?
                            "--:--:--":"11:20:45",
                            style: TextStyle(
                                fontSize: 10.sp, color: AppColors.white),
                          ).tr(),
                        ],
                      ),
                    ],
                  );
  },
)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                child:
                    // Row(
                    //   children: [
                    Text(
                  "what_you_want".tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),

                //   ],
                // ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.expenses);
                },
                child: Container(
                  alignment: Alignment.topCenter,
                 // padding: EdgeInsets.only(bottom: 30),
                  height: 18.h,
                  width: 27.w,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                      color: AppColors.lightBlue),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AssetsManager.money,fit: BoxFit.contain,),

                      Text("expenses".tr(),style: Theme.of(context).textTheme.displayLarge,),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
               //   Navigator.pushNamed(context, Routes.vacationsRoute);
                  Navigator.pushNamed(context, Routes.vacations);
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 18.h,
                  width: 27.w,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                      color: AppColors.lightBlue),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AssetsManager.onboarding3,

                        fit: BoxFit.contain,),
                    //  SizedBox(height: 5.h,),
                      Text("vacations".tr(),style: Theme.of(context).textTheme.displayLarge,),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("***************************");
                       Navigator.pushNamed(context, Routes.sallary);
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 18.h,
                  width: 27.w,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                      color: AppColors.lightBlue),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AssetsManager.onboarding4,fit: BoxFit.fitWidth,),
                    //  SizedBox(height: 5.h,),
                      Text("salary_slip".tr(),style: Theme.of(context).textTheme.displayLarge,),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
