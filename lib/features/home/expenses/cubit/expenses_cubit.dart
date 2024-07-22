import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/remote/service_api.dart';
import '../screens/widgets/expenses_grid.dart';

part 'expenses_state.dart';

class ExpensesCubit extends Cubit<ExpensesState> {
  ExpensesCubit(this.api) : super(ExpensesInitial());
  ServiceApi api;
  static ExpensesCubit get(context) => BlocProvider.of(context);
  final List<ExpenseItem> expenses = [
    ExpenseItem('مصروفات الكهرباء', 850),
    ExpenseItem('مصروفات الغاز', 450),
    ExpenseItem('مصروفات المشتريات', 2850),
    ExpenseItem('مصروفات الماء', 250),
    ExpenseItem('مصروفات رواتب الموظفين', 55500),
  ];
}
