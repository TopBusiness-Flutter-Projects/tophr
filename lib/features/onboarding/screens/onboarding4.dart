import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../../config/routes/app_routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/custom_arrow_back.dart';
import '../../../core/widgets/custom_button.dart';
import '../cubit/onboarding_cubit.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({super.key});

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
                child: Image.asset(AssetsManager.onboarding4,height: 30.h,width: 80.w,),
              ),
              //the first text
              Positioned(
                top: MediaQuery.of(context).size.height*.49,
                left: 0,
                right: 0,
                child: Center(
                  child: Text("salary_slip",
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
                  child: Text("check_salary", style:Theme.of(context).textTheme.displayMedium!.copyWith(
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Spacer(flex: 1,),
                    CustomButton(
                      width: 25.w,
                      height: 5.h,
                      backgroundColor: AppColors.lightBlue, onPressed: () {
                      Navigator.pushReplacementNamed(context, Routes.loginRoute1);                     }, text: "finish".tr(), textColor: AppColors.white,),
                   const Spacer(flex: 3,)
                    // SizedBox(width: 15.w,),
                    // CustomButton(
                    //   width: 25.w,
                    //   height: 5.h,
                    //   backgroundColor: AppColors.blue2, onPressed: () {
                    //   Navigator.pushReplacementNamed(context, Routes.loginRoute);
                    // }, text: "finish".tr(), textColor: AppColors.yellow,),
                  ],),
              ),
              Positioned(
                  top: 5.h,
                  left: 0,
                  child: CustomArrowBack(onPressed: () {
                    cubit.pageController.animateToPage(2, duration: Duration(microseconds: 10), curve: Curves.bounceInOut);
                  },))



            ],
          ),
        );
      },
    );
  }
}
