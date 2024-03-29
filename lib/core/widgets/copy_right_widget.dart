import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tophr/core/utils/app_colors.dart';

import '../utils/app_assets.dart';


class CopyRightsWidget extends StatelessWidget {
  const CopyRightsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
        alignment: Alignment.bottomCenter,
        child:SvgPicture.asset(AssetsManager.copyRights,color: AppColors.white,));
  }
}
