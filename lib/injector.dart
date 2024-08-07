import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tophr/features/onboarding/cubit/onboarding_cubit.dart';
import 'core/api/app_interceptors.dart';
import 'core/api/base_api_consumer.dart';
import 'core/api/dio_consumer.dart';
import 'core/remote/service_api.dart';
import 'features/home/cubit/home_cubit.dart';
import 'features/home/expenses/cubit/expenses_cubit.dart';
import 'features/home/sallary/cubit/sallary_cubit.dart';
import 'features/home/vacations/cubit/vacations_cubit.dart';
import 'features/login/cubit/login_cubit.dart';

// import 'features/downloads_videos/cubit/downloads_videos_cubit.dart';

final serviceLocator = GetIt.instance;

Future<void> setup() async {
  //! Features

  ///////////////////////// Blocs ////////////////////////

  serviceLocator.registerFactory(
    () => OnBoardingCubit(
        // serviceLocator(),
        )
  );
  serviceLocator.registerFactory(
          () => VacationsCubit(
        serviceLocator(),
      )
  );

  serviceLocator.registerFactory(
    () => LoginCubit(
     // serviceLocator(),
    ),
  );
  serviceLocator.registerFactory(
        () => SallaryCubit(
       serviceLocator(),
    ),
  );
  serviceLocator.registerFactory(
        () => ExpensesCubit(
      serviceLocator(),
    ),
  );
  //
  serviceLocator.registerFactory(
    () => HomeCubit(
     // serviceLocator(),
    ),
  );
  //
  // serviceLocator.registerFactory(
  //       () => GoogleMapsCubit(
  //    // serviceLocator(),
  //   ),
  // );
  // serviceLocator.registerFactory(
  //   () => ProfileCubit(
  //      serviceLocator(),
  //   ),
  // );
  // serviceLocator.registerFactory(
  //   () => FavoriteCubit(
  //     serviceLocator(),
  //   ),
  // );

  // serviceLocator.registerFactory(
  //   () => PostsCubit(
  //     serviceLocator(),
  //   ),
  // );
  // serviceLocator.registerFactory(
  //       () => EditProfileCubit(
  //     serviceLocator(),
  //   ),
  //
  // );
  // serviceLocator.registerFactory(
  //       () => MyPostsCubit(
  //     serviceLocator(),
  //   ),
  //
  // );
  // serviceLocator.registerFactory(
  //       () => AddServiceCubit(
  //     serviceLocator(),
  //   ),
  //
  // );
  // serviceLocator.registerFactory(
  //       () => DetailsCubit(
  //     serviceLocator(),
  //   ),
  //
  // );
  //
  // serviceLocator.registerFactory(
  //       () => PrivacyCubit(
  //     serviceLocator(),
  //   ),
  //
  // );
  // serviceLocator.registerFactory(
  //       () => ContactUsCubit(
  //     serviceLocator(),
  //   ),
  //
  // );
  // serviceLocator.registerFactory(
  //       () => NottificationCubit(
  //     serviceLocator(),
  //   ),
  //
  // );


  ///////////////////////////////////////////////////////////////////////////////

  //! External
  // Shared Preferences
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);

  serviceLocator.registerLazySingleton(() => ServiceApi(serviceLocator()));

  serviceLocator.registerLazySingleton<BaseApiConsumer>(
      () => DioConsumer(client: serviceLocator()));
  serviceLocator.registerLazySingleton(() => AppInterceptors());

  // Dio
  serviceLocator.registerLazySingleton(
    () => Dio(
      BaseOptions(
        contentType: "application/x-www-form-urlencoded",
        headers: {
          "Accept": "application/json",
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    ),
  );
}

class SplashCubit {
}
