import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tophr/core/widgets/custom_arrow_back.dart';

import '../../../core/utils/app_colors.dart';

class SalarySlipScreen extends StatelessWidget {
  const SalarySlipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 5.h,
          ),
          CustomArrowBack(onPressed: () {
            Navigator.pop(context);
          }),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              // height: 70.h,
              decoration: const BoxDecoration(
                  color: AppColors.blue2,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(64),
                      topRight: Radius.circular(64))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Text("salary_slip".tr(),style: Theme.of(context).textTheme.displayLarge,),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Divider(color: AppColors.white.withOpacity(0.3),),
                  ),
                  SizedBox(
                    height: 76.h,
                      child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return  Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.w),
                        child: Divider(color: AppColors.white.withOpacity(0.3),),
                      );
                    },
                    itemBuilder: (context, index) {
                       return Column(
                       children: [
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("قسيمة يوليو",style: Theme.of(context).textTheme.displayLarge,),
                          ],
                        ),
                         Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             SizedBox(width: 10,),
                           Text("من (1/7/2023)",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                               color: AppColors.lightBlue
                           )),
                             Spacer(),
                             Text("الي (31/7/2023)",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                 color: AppColors.lightBlue
                             ),),
                             SizedBox(width: 10,),                         ],)
                      ],
                    );
                  }, itemCount: 10,))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
