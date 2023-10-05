
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class PrivateInformation extends StatelessWidget {
   PrivateInformation({Key? key}) : super(key: key);
final  List <String> titles = ["citizenship","id","passport_number","birth_date","nationality","private_contact","email:","phone","bank_account","marital_status"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(titles[index].tr(),style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppColors.white
          ),),
        );
      },

    );
  }
}
