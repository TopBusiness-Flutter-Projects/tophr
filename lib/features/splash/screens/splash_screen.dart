import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tophr/config/routes/app_routes.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/widgets/bottom_copy_rights_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1),() => Navigator.pushReplacementNamed(context, Routes.onBoardingRoute),);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(AssetsManager.tophr),
          ),
           Image.asset("assets/images/copyright.png")
           // ,)
        ],
      ),
    );
  }
}
