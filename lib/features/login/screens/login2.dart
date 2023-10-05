import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../config/routes/app_routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/bottom_copy_rights_widget.dart';
import '../../../core/widgets/custom_arrow_back.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_container.dart';
import '../../../core/widgets/custom_textfield.dart';

class LoginScreen2 extends StatelessWidget{
  const LoginScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h,),
                //  Spacer(),
               Image.asset(AssetsManager.topHrWhite,
                 color: AppColors.white,width: 45.w,
                 height: 25.h,),
                  SizedBox(height: 5.h,),
                CustomContainer(
                  width: 90.w,
                  height: 30.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("login",style: Theme.of(context).textTheme.displayLarge,).tr(),
                     CustomTextField(
                       title: 'email'.tr(),
                       textColor: AppColors.white.withOpacity(0.3),
                      textInputType: TextInputType.name,
                      backgroundColor: AppColors.primary,
                      minLine: 1,
                      isPassword: false,
                      ),

                     CustomTextField(title: 'password'.tr(),
                       textColor: AppColors.white.withOpacity(0.3),
                      textInputType: TextInputType.text,
                      backgroundColor: AppColors.primary,
                      minLine: 1,
                      isPassword: false,
                    ),
                    CustomButton(backgroundColor: AppColors.yellow, textColor: AppColors.white,
                      text: "registration".tr(), onPressed: () {
                        Navigator.pushNamed(context, Routes.homeRoute);
                      },
                    fontSize: 14,)
                  ],
                )),
                  SizedBox(height: 10.h,),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                  //   child: TextButton(
                  //     child: Text('recover_password',
                  //     style: Theme.of(context).textTheme.bodyMedium).tr(),
                  //     onPressed: (){
                  //       Navigator.pushNamed(context, Routes.forgotPassword1Route);
                  //     },
                  //   ),),
                  // ),
                  CustomContainer(
                    width: 90.w,
                    height: 10.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // CustomButton(
                            //   width: 30.w,
                            //   height: 4.h,
                            //   backgroundColor: AppColors.primary, onPressed: () {
                            //   Navigator.pushNamed(context, Routes.signUpRoute);
                            // }, text: "new_register".tr(), textColor: AppColors.yellow,),
                            Text("no_account",style: Theme.of(context).textTheme.displayLarge,).tr(),
                            SizedBox(width: 15.w,),
                            CustomButton(
                              width: 33.w,
                              height: 4.h,
                              backgroundColor: AppColors.primary,
                              onPressed: () async {
                               await whatsapp();
                              }, text: "contact_us".tr(), textColor: AppColors.yellow,),
                          ],),
                      ],
                    ),
                  ),

                SizedBox(height: 11.h,),
                  BottomCopyRightsWidget()

                // Spacer(),

                ],
              ),
            ),
            Positioned(
                top: 5.h,
                left: 0,
                child: CustomArrowBack(onPressed: () {
                  Navigator.pop(context);
                },)),
            // BottomCopyRightsWidget()
          ],
        ),
      ),
    );
  }
  whatsapp() async{
    var contact = "+201011827324";
    var androidUrl = "whatsapp://send?phone=$contact&text=Hi, I need some help about top HR application";
    var iosUrl = "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help about top HR application')}";

    try{
      if(Platform.isIOS){
        await launchUrl(Uri.parse(iosUrl));
      }
      else{

        await launchUrl(Uri.parse(androidUrl));
      }
    } on Exception{
     // EasyLoading.showError('WhatsApp is not installed.');
    }
  }
}
