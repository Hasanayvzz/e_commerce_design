import 'package:eticaretdesign/constant/constant.dart';
import 'package:eticaretdesign/view/base_scaffold.dart';
import 'package:eticaretdesign/view/home.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Grock.toRemove(BaseScaffold());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(
          child: Image(image: AssetImage("assets/images/im_splash.png"))),
    );
  }
}
