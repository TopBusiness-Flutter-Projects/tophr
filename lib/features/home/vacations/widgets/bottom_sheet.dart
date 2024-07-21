import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:tophr/features/home/vacations/widgets/typeCatogreyAddProduct.dart';

import '../../../../core/utils/app_colors.dart';
import '../cubit/vacations_cubit.dart';
import 'dateinput_field.dart';

class BottomSheetContent extends StatefulWidget {
  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VacationsCubit, VacationsState>(
        builder: (context, state) {
          VacationsCubit cubit = VacationsCubit.get(context);
          return
            cubit.isAlternateDesign?    Container(
                padding: EdgeInsets.all(16.0),
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color:AppColors.primary,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                ),
                child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          Text(
                            'سجل الاجازات',
                            style: TextStyle(color: cubit.isAlternateDesign ? Colors.white : Color(0xFF012a4b), fontSize: 18),
                          ),
                          SizedBox(height: 10), // Add some space between the text and the list
                          Expanded(
                            child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'طلب اجازة مرضية',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      subtitle: Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'من (12/6/2023) إلى (14/6/2023)',
                                            style: TextStyle(color: AppColors.lightBlue,fontSize: 10),maxLines: 1,
                                          ),
                                          Flexible(
                                            child: Text(
                                              '(مقبولة)',
                                              style: TextStyle(color:AppColors.yellow),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(color:AppColors.lightGrey)

                                  ],
                                );

                              },
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 16,
                        right: 16,
                        child: Container(
                          width: 56.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: AppColors.yellow, width: 3.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: InkWell(
                              onTap: (){
                                cubit.toggleDesign();
                              },

                              child: Icon(Icons.add, color: AppColors.lightBlue, size: 30)),
                        ),
                      )    ])):
            Container(
                padding: EdgeInsets.all(16.0),
                // height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color:        AppColors.primary,

                  borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                ),
                child:                             Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        'سجل الاجازات',
                        style: TextStyle(color:  AppColors.white , fontSize: 18),
                      ),
                    ),
                    SizedBox(height:2.h),
                    TypeCategoryAddProduct(text: "the_kind_of_holiday".tr(),),
                    // SizedBox(height: 2.h),
                    SizedBox(height:2.h),
                    Text(
                      'مدة الاجازة ',
                      style: TextStyle(color:  AppColors.white , fontSize: 18),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("من",style: TextStyle(color:AppColors.white),)),
                        ),
                        Expanded(
                          child: DateInputField(),
                        ),

                        SizedBox(width: 16),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("الي",style: TextStyle(color:AppColors.white),)),
                        ),

                        Expanded(
                          child: DateInputField(),
                        ),
                      ],
                    ),

                    SizedBox(height:2.h),
                    Center(
                      child: Container(
                        width: 30.w,
                        child: ElevatedButton(

                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.yellow,

                              // لون الزر
                              // minimumSize: Size(50.w, 50), // تحديد الحد الأدنى للعرض والارتفاع
                            ),

                            onPressed: (){
                              cubit.toggleDesign();
                            }, child: Text('order'.tr(),style: TextStyle(color:AppColors.white),)),
                      ),
                    )
                  ],
                )

            );}
    );}}