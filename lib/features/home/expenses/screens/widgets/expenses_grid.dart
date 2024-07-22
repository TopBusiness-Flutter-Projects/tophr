import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:tophr/core/utils/app_colors.dart';
import 'package:tophr/core/widgets/custom_textfield.dart';

import '../../../sallary/screens/widgets/sallary_item.dart';
import '../../cubit/expenses_cubit.dart';


class ExpenseItem {
  final String title;
  final int amount;
  ExpenseItem(this.title, this.amount);
}

class ExpensesGrid extends StatelessWidget {
  const ExpensesGrid({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesCubit, ExpensesState>(
        builder: (context, state) {
      ExpensesCubit cubit = ExpensesCubit.get(context);
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: cubit.expenses.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){

          },
            child: ExpenseCard(expense: cubit.expenses[index]));
      },
    );
  }
    );}}
class ExpenseCard extends StatelessWidget {
  final ExpenseItem expense;

  ExpenseCard({required this.expense});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  expense.title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '${expense.amount} ج.م',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)), // Add rounded corners
                      ),
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * .5,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Container(
                                  width: 50,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGrey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Center(
                                child: Text(
                                  'addAnExpense'.tr(),
                                  style: TextStyle(color: Colors.white, fontSize: 14.sp,fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(height: 3.h),
                              CustomTextField(title: "the_expense".tr(), textInputType: TextInputType.text, backgroundColor: AppColors.blue2, textColor: AppColors.lightGrey.withOpacity(.3)),
                              SizedBox(height:15.h),
                              Center(
                                child: Container(

                                  width: 40.w,
                                  child: ElevatedButton(

                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.yellow,

                                        // لون الزر
                                        // minimumSize: Size(50.w, 50), // تحديد الحد الأدنى للعرض والارتفاع
                                      ),

                                      onPressed: (){
                                        //   cubit.toggleDesign();
                                      }, child: Text('addition'.tr(),style: TextStyle(color:AppColors.white),)),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(Icons.add, color: AppColors.lightBlue)),
            ),
          ),
        ],
      ),
    );
  }
}
