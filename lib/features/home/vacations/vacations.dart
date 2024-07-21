import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:tophr/core/utils/app_colors.dart';
import 'package:tophr/features/home/vacations/widgets/bottom_sheet.dart';

class Vacations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.blue2,
              borderRadius: BorderRadius.circular(40),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'اجازاتك',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)), // Add rounded corners
                            ),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return BottomSheetContent();
                            },
                          );
                        },
                        child: _buildProgressRow(context, 'عارضة', 0.7, 5, 7),
                      ),
                      _buildProgressRow(context, 'اعتيادية', 0.5, 5, 7),
                      _buildProgressRow(context, 'مرضية', 0.8, 5, 7),
                      _buildProgressRow(context, 'بدون مرتب', 0.6, 5, 7),
                      _buildProgressRow(context, 'بمرتب', 0.4, 5, 7),
                      _buildProgressRow(context, 'وضع', 0.9, 5, 7),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProgressRow(BuildContext context, String label, double percent, int currentDays, int totalDays) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: LinearPercentIndicator(
              lineHeight: 10.0,
              barRadius: Radius.circular(20),
              percent: percent,
              backgroundColor: Colors.blue,
              progressColor: Colors.orange,
            ),
          ),
          SizedBox(width: 10), // Add spacing between the progress bar and text

    Text(
    '($currentDays من $totalDays ايام)',
    style: TextStyle(
    color: AppColors.lightBlue,
    fontSize: 12,
    ),
    ),
    SizedBox(width: 5.w,),
    Text(
    label,
    style: TextStyle(
    color: Colors.white,
    fontSize: 16,
    ),
    ),
        ],
      ),
    );
  }
}
