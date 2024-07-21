import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/remote/service_api.dart';

part 'sallary_state.dart';

class SallaryCubit extends Cubit<SallaryState> {
  SallaryCubit(this.api) : super(SallaryInitial());
  ServiceApi api;
  static SallaryCubit get(context) => BlocProvider.of(context);

  final List<Map<String, String>> additions = [
    {'title': 'theBasic'.tr(), 'amount': '3500 ج.م'},
    {'title': 'بدل سكن', 'amount': '3500 ج.م'},
    {'title': 'بدل انتقال', 'amount': '3500 ج.م'},
    {'title': 'بدل مدارس', 'amount': '3500 ج.م'},
    {'title': 'بدل مخاطر', 'amount': '3500 ج.م'},
  ];

  final List<Map<String, String>> deductions = [
    {'title': 'سلف', 'amount': '3500 ج.م'},
    {'title': 'غياب', 'amount': '3500 ج.م'},
    {'title': 'تأمين صحي', 'amount': '3500 ج.م'},
    {'title': 'ضريبة دخل', 'amount': '3500 ج.م'},
    {'title': 'اخرى', 'amount': '3500 ج.م'},
  ];

}
