import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/remote/service_api.dart';

part 'expenses_state.dart';

class ExpensesCubit extends Cubit<ExpensesState> {
  ExpensesCubit(this.api) : super(ExpensesInitial());
  ServiceApi api;
  static ExpensesCubit get(context) => BlocProvider.of(context);

}
