import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/custom_arrow_back.dart';

class VacationsScreen extends StatelessWidget {
  const VacationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          SizedBox(height: 5.h,),
          CustomArrowBack(onPressed: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
