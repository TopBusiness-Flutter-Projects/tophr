import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/remote/service_api.dart';

part 'vacations_state.dart';

class VacationsCubit extends Cubit<VacationsState> {
  VacationsCubit(this.api) : super(VacationsInitial());
  ServiceApi api;

  static VacationsCubit get(context) => BlocProvider.of(context);

  bool isAlternateDesign = false;
  List<String> typeList = ["عارضة", "اعتيادية","مرضية","بدون مرتب","بمرتب",
  "وضع"];
  String currentType = 'عارضة'.tr();

  onChangeType(value) {
    currentType = value;

    emit(ONChangeType());
  }
  void toggleDesign() {
      isAlternateDesign = !isAlternateDesign;
      emit(toggleBottomSheet());
  }
}
