import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../core/utils/app_assets.dart';
import '../tabs/account_tab.dart';
import '../tabs/home_tab.dart';
import '../tabs/menu_tab.dart';
import '../tabs/news_tab.dart';
import '../tabs/notification_tab.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());


  int currentIndex = 0 ;
  //List<String> titles = ["products","sales","returns","customer_payments","dismissal_notice"];
 // List<String> imagesPath = [AssetsManager.packageDelivery,AssetsManager.deliveryTruck,AssetsManager.cashFlow,AssetsManager.budget,AssetsManager.order];
  List<Widget> tabs=[const HomeTab(),const NewsTab(),const NotificationTab(),AccountTab(),menuTab()];
  changeTabs(int value){
    currentIndex = value ;
    emit(ChangingTabs());
  }
}
