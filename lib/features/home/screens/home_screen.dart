import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        HomeCubit cubit = context.read<HomeCubit>();
        return Scaffold(
          backgroundColor: AppColors.primary,

          body:cubit.tabs[cubit.currentIndex] ,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: AppColors.blue2
            ),
            child: BottomNavigationBar(
              onTap: (value) {
                cubit.changeTabs(value);
              },
              currentIndex: cubit.currentIndex,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: AppColors.yellow,
              selectedIconTheme: const IconThemeData(
                  color: AppColors.yellow
              ),
              unselectedItemColor: AppColors.white,
              items: [
                BottomNavigationBarItem(
                    icon:SvgPicture.asset(AssetsManager.homeIcon,width: 25,),label: "home".tr(),
                    activeIcon: SvgPicture.asset(AssetsManager.homeIcon,color: AppColors.yellow,width: 25,)
                ),
                BottomNavigationBarItem(icon:SvgPicture.asset(AssetsManager.newsIcon,width: 25,),
                    activeIcon: SvgPicture.asset(AssetsManager.newsIcon,color: AppColors.yellow,width: 25,),
                    label: "news".tr()),
                BottomNavigationBarItem(icon:SvgPicture.asset(AssetsManager.notificationIcon,width: 25,),
                    activeIcon: SvgPicture.asset(AssetsManager.notificationIcon,color: AppColors.yellow,width: 25,),
                    label: "notification".tr()),
                BottomNavigationBarItem(
                  icon:SvgPicture.asset(AssetsManager.accountIcon,width: 25,),
                  activeIcon:SvgPicture.asset(AssetsManager.accountIcon,color: AppColors.yellow,width: 25,) ,
                  label: "account".tr(),),
                BottomNavigationBarItem(
                  icon:SvgPicture.asset(AssetsManager.menuIcon,width: 25,),
                  activeIcon:SvgPicture.asset(AssetsManager.menuIcon,color: AppColors.yellow,width: 25,) ,
                  label: "menu".tr(),),

              ],
            ),
          ),

        );
      },
    );
  }
}
