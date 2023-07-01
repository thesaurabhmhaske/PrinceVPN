import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../screens/home_screen.dart';
import '../utils.dart';




class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // page2zKQ (5:71)
        padding: EdgeInsets.fromLTRB(14*fem, 100*fem, 16*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(24*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 240*fem),
              width: double.infinity,
              child: Flexible(
                child:
                
                Lottie.asset('assets/lottie/Wifi.json',
                
                //alignment: Alignment.center,
                width: 156,
                height: 156,
                fit: BoxFit.cover,),
              ),
            ),
            Container(
              // mainframeN54 (5:73)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    // speedyserversHhp (5:74)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      child: Text(
                        'Speedy Servers',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Sarala',
                          fontSize: 27.5*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.69*ffem/fem,
                          color: Color(0xFF0EBECA),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    // highspeedserverszML (5:75)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                      child: Text(
                        'High speed Servers',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Sarala',
                          fontSize: 17*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.63*ffem/fem,
                          color: Color(0x7a000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame2npv (6:252)
              width: double.infinity,
              height: 110*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20*fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle2iia (6:253)
                    left: 15*fem,
                    right: 15*fem,
                    top: 55*fem,
                      child: ElevatedButton(
                        
                          onPressed: () {
                            Get.off(()=> HomeScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Color.fromARGB(255, 18, 224, 237),
                            fixedSize: Size(350*fem, 50*fem),
                            alignment: Alignment.topCenter,
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Get Started',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Sarala',
                                fontSize: 21*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.63*ffem/fem,
                                color: Color(0xfffffdfd),
                              ),
                            ),
                        ),
                          // width: 350*fem,
                          // height: 50*fem,
                          // child: Container(
                          //   decoration: BoxDecoration (
                          //     borderRadius: BorderRadius.circular(30*fem),
                          //     color: Color(0xff0ebeca),
                          //   ),
                      ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}