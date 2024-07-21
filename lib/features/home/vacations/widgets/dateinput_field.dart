import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class DateInputField extends StatelessWidget {

  const DateInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:5,vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft:Radius.circular(30) ,
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color:AppColors.blue2, // Lighter blue for input field
      ),

      child: TextField(
        textAlign: TextAlign.right,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal:5, vertical: 1),
        ),
      ),
    );
  }
}