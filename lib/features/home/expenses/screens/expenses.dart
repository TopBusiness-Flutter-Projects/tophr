import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:tophr/features/home/sallary/screens/widgets/salary_details_bottom_sheet.dart';
import '../../../../core/utils/app_colors.dart';
import '../cubit/expenses_cubit.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesCubit, ExpensesState>(
        builder: (context, state) {
          ExpensesCubit cubit = ExpensesCubit.get(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: AppColors.primary,
              appBar: AppBar(
                backgroundColor:AppColors.primary,
                leading: InkWell(
                    onTap: (){
                      Navigator.pop(context);

                    },
                    child: Icon(Icons.arrow_back, color: AppColors.yellow)),
              ),
              body: InkWell(
                onTap: (){
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)), // Add rounded corners
                    ),
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return  SalaryDetailsBottomSheet();
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.blue2,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      //    mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: Text(
                            'salarySlips'.tr(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: ListView.builder(itemBuilder: (context,index){
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Divider(color:AppColors.whitelight.withOpacity(.5)),
                                Text("قسيمة يوليو", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),),
                                SizedBox(height: 1.h),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("الي (31/7/2023)", style: TextStyle(
                                      color: AppColors.lightBlue,
                                      //     fontSize: 18,
                                    ),),
                                    SizedBox(width: 10.w,),
                                    Text("من (1/7/2023)", style: TextStyle(
                                      color: AppColors.lightBlue,
                                      //  fontSize: 18,
                                    )),
                                  ],
                                ),
                              ],);
                          }),
                        )


                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
    );}}



