import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:tophr/features/onboarding/cubit/onboarding_cubit.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/bottom_copy_rights_widget.dart';
import '../../../core/widgets/copy_right_widget.dart';
import '../../../core/widgets/custom_arrow_back.dart';
import '../../../core/widgets/custom_button.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
  builder: (context, state) {
    OnBoardingCubit cubit = context.read<OnBoardingCubit>();
    return Scaffold(
      backgroundColor: AppColors.primary,

      body: Stack(
        children: [
          Positioned(
            top: 10.h,
            left: 0,
            right: 0,
            child: Image.asset(AssetsManager.onboarding2,height: 30.h,width: 80.w,),
          ),
          //the first text
          Positioned(
            top: MediaQuery.of(context).size.height*.49,
            left: 0,
            right: 0,
            child: Center(
              child: Text("attendance",
                  style:
                  Theme.of(context).textTheme.displayLarge).tr(),
            ),
          ),
          // SizedBox(height: 2.h),
          // the second text
          Positioned(top: MediaQuery.of(context).size.height*.54,
            left: 0,
            right: 0,

            child: Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("log_in_out",
                textAlign:TextAlign.center  ,
                  style:Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: AppColors.white
              ),).tr(),
            )),
          ),


          // 2 buttons next & skip
          Positioned(
            top:  MediaQuery.of(context).size.height*.64,
            bottom: 0,
            left: 0,
            right: 0,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  width: 25.w,
                  height: 5.h,
                  backgroundColor: AppColors.lightBlue, onPressed: () {
                  cubit.pageController.animateToPage(2, duration: Duration(microseconds: 10), curve: Curves.bounceInOut);
                }, text: "next".tr(), textColor: AppColors.white,),
                SizedBox(width: 15.w,),
                CustomButton(
                  width: 25.w,
                  height: 5.h,
                  backgroundColor: AppColors.blue2, onPressed: () {
                  Navigator.pushNamed(context, Routes.loginRoute1);
                }, text: "skip".tr(), textColor: AppColors.yellow,),
              ],),
          ),
          Positioned(
            top: 5.h,
              left: 0,
              child: CustomArrowBack(onPressed: () {
                cubit.pageController.animateToPage(0, duration: Duration(microseconds: 10), curve: Curves.bounceInOut);
              },)),
          // SizedBox(height: 7.h,),
          // const Positioned(
          //     bottom: 10,
          //     left: 0,
          //     right: 0,
          //     child: Center(child: BottomCopyRightsWidget())),


        ],
      ),
    );
  },
);
    
    
    
    
    
    
    // return Scaffold(
    //   backgroundColor: AppColors.primary,
    //
    //   body: Stack(
    //
    //     children: [
    //       // SizedBox(height: 27.h),
    //     //  const Spacer(),
    //       Positioned(
    //
    //         top: MediaQuery.of(context).size.height*.3,
    //         left: 0,
    //         right: 0,
    //         //bottom:  MediaQuery.of(context).size.height*.1,
    //
    //         child:
    //         SizedBox(
    //           height: MediaQuery.of(context).size.height*.20,
    //           width: 70.w,
    //           child:  Center(
    //         child: SizedBox(
    //         height: 20.h,
    //           width: 70.w,
    //           child: Image.asset(AssetsManager.onboarding2),
    //         ),
    // ),
    //         ),
    //       ),
    //       // SizedBox(height: 2.h,),
    //       Positioned(
    //         top: MediaQuery.of(context).size.height*.51,
    //         left: 0,
    //         right: 0,
    //
    //         child: Center(
    //           child:   Text(
    //             "clients_transactions",
    //             textAlign: TextAlign.center,
    //             style: Theme.of(context).textTheme.displayLarge,
    //           ).tr(),
    //         ),
    //       ),
    //       // SizedBox(height: 2.h),
    //       Positioned(top: MediaQuery.of(context).size.height*.54,
    //         left: 0,
    //         right: 0,
    //
    //         child: Center(child:  Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Text(
    //             "add_customers_transactions",
    //             textAlign: TextAlign.center,
    //             style: Theme.of(context).textTheme.displayMedium,).tr(),
    //         ),),
    //       ),
    //       // SizedBox(height: 4.h,),
    //       //  SizedBox(height: 20.h,),
    //       // SizedBox(height: 20.h,),
    //       Positioned(
    //         top:  MediaQuery.of(context).size.height*.64,
    //         bottom: 0,
    //         left: 0,
    //         right: 0,
    //
    //         child:       Row(
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.only(right: 28.0),
    //               child: Align(
    //                 alignment: Alignment.centerRight,
    //                 child: CustomButton(
    //                   width: 25.w,
    //                   height: 5.h,
    //                   backgroundColor: AppColors.lightBlue,
    //                   onPressed: () {
    //                     Navigator.pushReplacementNamed(context, Routes.loginRoute);
    //                   },
    //                   text: "finish",
    //                   textColor: AppColors.white,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //
    //
    //
    //
    //
    //
    //      //  SizedBox(
    //      //    height: 4.h,
    //      //  ),
    //      // SizedBox(height: 15.h,),
    //
    //     //  const Spacer()
    //
    //       // SizedBox(height: 7.h,),
    //       // CopyRightsWidget()
    //     ],
    //   ),
    // );
  }
}
