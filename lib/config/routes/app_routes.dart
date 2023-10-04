
import 'package:flutter/material.dart';
import 'package:tophr/features/login/screens/login1.dart';
import 'package:tophr/features/login/screens/login2.dart';
import 'package:tophr/features/onboarding/screens/onboarding.dart';
import '../../core/models/product_model.dart';
import '../../core/models/shipment_model.dart';
import '../../core/utils/app_strings.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/onboarding/screens/onboarding1.dart';
import '../../features/onboarding/screens/onboarding2.dart';
import '../../features/onboarding/screens/onboarding3.dart';
import '../../features/onboarding/screens/onboarding4.dart';
import '../../features/splash/screens/splash_screen.dart';

class Routes{
  static const String initialRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String onBoarding1Route = '/onBoarding1';
  static const String onBoarding2Route = '/onBoarding2';
  static const String onBoarding3Route = '/onBoarding3';
  static const String onBoarding4Route = '/onBoarding4';
  static const String loginRoute2 = '/login2';
  static const String loginRoute1 = '/login1';
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

     case Routes.onBoardingRoute:
       return MaterialPageRoute(builder: (context) => const OnBoarding(),);


     case Routes.onBoarding1Route:
       return MaterialPageRoute(builder: (context) => const OnBoarding1(),);


     case Routes.onBoarding2Route:
       return MaterialPageRoute(builder: (context) => const OnBoarding2(),);

     case Routes.onBoarding3Route:
       return MaterialPageRoute(builder: (context) => const OnBoarding3(),);

     case Routes.onBoarding4Route:
       return MaterialPageRoute(builder: (context) => const OnBoarding4(),);


     case Routes.loginRoute1:
       return MaterialPageRoute(builder: (context) => const LoginScreen1(),);

     case Routes.loginRoute2:
       return MaterialPageRoute(builder: (context) => const LoginScreen2(),);


     case Routes.homeRoute:
       return MaterialPageRoute(builder: (context) => const HomeScreen(),);


     default:
       return undefinedRoute() ;
   }
  }
  static Route<dynamic> undefinedRoute(){
   return MaterialPageRoute(builder: (context) => const Scaffold(body: Center(child: Text(AppStrings.noRouteFound),),),);
  }
}