import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../../config/routes/app_routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/custom_button.dart';
import '../cubit/onboarding_cubit.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

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
                child: Image.asset(AssetsManager.onboarding1,height: 30.h,width: 80.w,),
              ),
           //the first text
              Positioned(
                top: MediaQuery.of(context).size.height*.49,
                left: 0,
                right: 0,
                child: Center(
                  child: Text("welcome",
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
                  child: Text("app_odoo", style:Theme.of(context).textTheme.displayMedium!.copyWith(
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
                      backgroundColor: AppColors.lightBlue,
                      onPressed: () {
                       // Navigator.pushNamed(context, Routes.onBoarding2Route);
                       cubit.pageController.animateToPage(1, duration: Duration(microseconds: 10), curve: Curves.bounceInOut);
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

             // SizedBox(height: 7.h,),
             //  CopyRightsWidget()


            ],
          ),
        );
      },
    );
  }
}
