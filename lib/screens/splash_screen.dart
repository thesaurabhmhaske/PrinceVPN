import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:vpn_basic_project/screens/index.dart';

import '../helpers/ad_helper.dart';
import '../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1500), () {
      //exit full-screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

      AdHelper.precacheInterstitialAd();
      AdHelper.precacheNativeAd();

      //navigate to home
      Get.off(() => index());
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    //initializing media query (for getting device screen size)
    mq = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          //app logo
          Positioned(
              left: mq.width * .275,
              top: mq.height * .25,
              width: mq.width * .45,
              child: Image.asset('assets/images/logo.png')),

          //label
          Positioned(
              bottom: mq.height * .15,
              width: mq.width,
              child: Text(
                'MADE IN INDIA WITH ❤️',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).lightText, letterSpacing: 1),
              ))
        ],
      ),
    );
  }
}
