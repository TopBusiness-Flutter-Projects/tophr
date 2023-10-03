import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'config/routes/app_routes.dart';
import 'config/theme/app_theme.dart';
import 'core/utils/app_strings.dart';
import 'package:tophr/injector.dart' as injector;

class TopHr extends StatelessWidget {
  const TopHr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(text);

    // return MultiBlocProvider(
    //   providers: [
    //     // BlocProvider(
    //     //   create: (_) => injector.serviceLocator<SplashCubit>(),
    //     // ),
    //     // BlocProvider(
    //     //   create: (_) => injector.serviceLocator<LoginCubit>(),
    //     // ),
    //     // BlocProvider(
    //     //   create: (_) => injector.serviceLocator<HomeCubit>(),
    //     // ),
    //     // BlocProvider(
    //     //   create: (_) => injector.serviceLocator<PostsCubit>(),
    //     // ),
    //     // BlocProvider(
    //     //   create: (_) => injector.serviceLocator<ProfileCubit>(),
    //     // ),
    //     // BlocProvider(
    //     //   create: (_) => injector.serviceLocator<FavoriteCubit>(),
    //     // ),
    //     //
    //     // BlocProvider(
    //     //   create: (_) => injector.serviceLocator<PrivacyCubit>(),
    //     // ),
    //     //
    //     //
    //     // BlocProvider(
    //     //   create: (_) => injector.serviceLocator<AddServiceCubit>(),
    //     // ),
    //
    //
    //
    //   ],
return GetMaterialApp(
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: appTheme(),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData.light(),
        // standard dark theme
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        onGenerateRoute: AppRoutes.onGenerateRoute,

    );
  }
}
