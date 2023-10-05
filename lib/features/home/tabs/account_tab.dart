import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sizer/sizer.dart';
import 'package:tophr/core/utils/app_assets.dart';
import 'package:tophr/core/widgets/custom_button.dart';
import 'package:tophr/features/home/cubit/home_cubit.dart';

import '../../../core/utils/app_colors.dart';
import 'account_tabs/job_infomation.dart';
import 'account_tabs/private_information.dart';

class AccountTab extends StatefulWidget {
  const AccountTab({super.key});

  @override
  State<AccountTab> createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> with TickerProviderStateMixin {
 late TabController tabController ;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    tabController.animateTo(context.read<HomeCubit>().accountTabsCurrentIndex);
  }




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
                  "account".tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                )
              ],
            ),
          ),
         // SizedBox(height: 0.h,),
          Stack(
            children: [
              SizedBox(
               // color: Colors.cyan,
                height: 75.h,
                child: Container(
                  margin: EdgeInsets.only(top: 12.h),
                  width: double.infinity,
                  height: 68.h,
                  decoration: const BoxDecoration(
                    color: AppColors.lightBlue,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(60) ,topLeft:Radius.circular(60)
                    )
                  ),
                  child: BlocBuilder<HomeCubit, HomeState>(
                   builder: (context, state) {
                     HomeCubit cubit = context.read<HomeCubit>();
                   return ListView(
                    children: [
                      SizedBox(height: 11.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                       ...List.generate(2, (index) =>
                       CustomButton(
                         backgroundColor:cubit.accountTabsCurrentIndex==index?AppColors.lightYellow :AppColors.primary,
                         textColor:cubit.accountTabsCurrentIndex==index? AppColors.white:AppColors.white.withOpacity(0.5),
                         text:index==0? "job_information":"private_information",
                         height: 6.h,
                         fontSize: 15.sp,
                         onPressed: () {
                           // cubit.changeAccountTabs(index);
                           // print("job index = ${cubit.accountTabsCurrentIndex}");
                            tabController.animateTo(index);
                         },),)
                      ],),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: SizedBox(
                          height:40.h,
                            child: TabBarView(
                              controller:tabController ,
                              children: [
                               JobInformation(),//red
                                PrivateInformation()//green
                              ],
                            )),
                      )
                    ],
                  );
  },
),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height:25.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    color: AppColors.blue2,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:Column(
                    children: [
                      CircleAvatar(
                        radius: 13.5.w,
                        backgroundColor:AppColors.primary,
                        child: CircleAvatar(
                          radius: 12.w,
                          child:
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.w),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(AssetsManager.person),
                          ),
                        ),
                      ),
                      Text("Mohammed Gad",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                        fontSize: 12.sp
                      ),),
                      Text("Software Engineer",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.white.withOpacity(0.6),
                          fontSize: 10.sp
                      ),),
                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         SizedBox(
                          height:40,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("3",style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white.withOpacity(0.7),
                                  fontSize: 9.sp
                              ),),
                              Text("عدد قسائم الرواتب",style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white.withOpacity(0.7),
                                  fontSize: 9.sp
                              ),)
                            ],
                          ),
                        ),
                          Container(width: 1,color: AppColors.white,height: 3.h,),
                           SizedBox(
                            height:40,
                            child: Column(
                              children: [
                                Text("9:30",style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white.withOpacity(0.7),
                                    fontSize: 9.sp
                                ),),
                                Text("ساعة الشهر الماضي",style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white.withOpacity(0.7),
                                    fontSize: 9.sp
                                ),)
                              ],
                            ),
                          ),
                      ],)
                      
                    ],) ,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
