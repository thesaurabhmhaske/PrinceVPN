import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:lottie/lottie.dart';
import '../utils.dart';

import '../main.dart';

class Page1 extends StatelessWidget {

  const Page1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            right: mq.width * 0.71,
            top: mq.height * 0.001,
            width: mq.width * 0.4,
            child: Lottie.asset('assets/lottie/lock.json',
            width: 500,
            height: 500,
            fit: BoxFit.cover),
          ),

          Positioned(
            bottom: mq.height * 0.225,
            width: mq.width,
            child: Text(
              'Safe and Secure',
              textAlign: TextAlign.center,
              style: SafeGoogleFont (
                          'Sarala',
                          fontSize: 27.5*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.69*ffem/fem,
                          color: Color(0xff0ebeca),
                        ),
            ),
          ),
          Positioned(
            bottom: mq.height * 0.19,
            width: mq.width,
            child: Text(
                      'Safe and Secure data',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Sarala',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.63*ffem/fem,
                        color: Color(0x7a000000),
                      ),
                    ),
          )
        ]
      ),
    );
  }
}