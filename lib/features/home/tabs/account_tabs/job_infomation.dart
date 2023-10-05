

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tophr/core/utils/app_colors.dart';

class JobInformation extends StatelessWidget {
   JobInformation({Key? key}) : super(key: key);
final List <String> titles = ["work_hours","department","manager","trainer","work_address","work_phone","work_email"];
final List <String> info = ["standard 40 hours/week","Sales","Admin","Admin","Cairo Egypt","01020304050","topbuisness@gmail.com"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(titles[index].tr()+info[index].tr(),style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColors.white
          ),),
        );
      },

    );
  }
}
