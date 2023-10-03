
import 'package:flutter/material.dart';
import '../../core/models/product_model.dart';
import '../../core/models/shipment_model.dart';
import '../../core/utils/app_strings.dart';
import '../../features/splash/screens/splash_screen.dart';

class Routes{
  static const String initialRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String signUpRoute = '/signUp';
  static const String forgotPassword1Route = '/forgotPassword1';
  static const String forgotPassword2Route = '/forgotPassword2';
  static const String forgotPassword3Route = '/forgotPassword3';
  static const String homeRoute = '/home';
  static const String productsRoute = '/products';
  static const String newProductRoute = '/newProduct';
  static const String createSalesOrderRoute = '/createSalesOrder';
  static const String paymentRoute = '/payment';
  static const String  receiptRoute = '/ receipt';
  static const String  returnsRoute = '/ returns';
  static const String  customerPaymentsRoute = '/ customerPayments';
  static const String  catchReceiptRoute = '/ catchReceipt';
  static const String  dismissalNoticeRoute = '/ dismissalNotice';
  static const String  myAccountRoute = '/ myAccount';
  static const String  editAccountRoute = '/ editAccount';
  static const String  reportsRoute = '/ reports';
  static const String  expectedClientsListRoute = '/ xpectedClientsList';
  static const String  itineraryDetailsRoute = '/ itineraryDetails';
  static const String  dismissalNoticeDetailsRoute = '/ dismissalNoticeDetails';
  static const String  expectedClientsTabRoute = '/ ExpectedClientsTab';
  static const String  googleMapRoute = '/ googleMap';
  static const String  googleMapRoutingRoute = '/ googleMapRoutingScreen';
  static const String  salesOrderedListRoute = '/ salesOrderedListScreen';
  static const String  returnsListRoute = '/ returnsListScreen';

}









class AppRoutes{
 static Route onGenerateRoute(RouteSettings settings){
   switch(settings.name)
    {
     case Routes.initialRoute:
       return MaterialPageRoute(builder: (context) => const SplashScreen(),);




     default:
       return undefinedRoute() ;
   }
  }
  static Route<dynamic> undefinedRoute(){
   return MaterialPageRoute(builder: (context) => const Scaffold(body: Center(child: Text(AppStrings.noRouteFound),),),);
  }
}