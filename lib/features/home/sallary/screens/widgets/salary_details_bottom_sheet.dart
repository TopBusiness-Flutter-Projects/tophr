import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tophr/features/home/sallary/screens/widgets/sallary_item.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../cubit/sallary_cubit.dart';

class SalaryDetailsBottomSheet extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SallaryCubit, SallaryState>(
        builder: (context, state) {
          SallaryCubit cubit = SallaryCubit.get(context);

          return Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'قسيمة الراتب لشهر يوليو',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Divider(color: Colors.grey),
                SalaryItem(title: 'theBasic'.tr(), amount: '3500 ج.م'),
                Divider(color: Colors.grey),
                buildSection('add-ons'.tr(),cubit. additions),
                Divider(color: Colors.grey),
                SalaryItem(title: 'إجمالي الراتب', amount: '3500 ج.م'),
                Divider(color: Colors.grey),
                buildSection('الاستقطاعات', cubit.deductions),
                // Divider(color: Colors.grey),
                // SalaryItem(title: 'إجمالي الراتب', amount: '3500 ج.م'),
                // Divider(color: Colors.grey),
                // SalaryItem(title: 'مجموع الاستقطاعات', amount: '3500 ج.م'),
                // Divider(color: Colors.grey),
              ],
            ),
          );
        }
    );
  }
  Widget buildSection(String title, List<Map<String, String>> items) {
    return BlocBuilder<SallaryCubit, SallaryState>(
        builder: (context, state) {
      SallaryCubit cubit = SallaryCubit.get(context);

      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text(title, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
        SizedBox(height: 10),
        Table(
          columnWidths: {
            0: FlexColumnWidth(3),
            1: FlexColumnWidth(2),
          },
          children: items.map((item) {
            return TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    item['title']!,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    item['amount']!,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
    );}
}
