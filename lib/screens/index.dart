import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../screens/slide2.dart';
import '../screens/slide1.dart';

class index extends StatelessWidget{

  final _controller=PageController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          SizedBox(
            height:775,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2()               
              ],
            ),
          ),

          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: ExpandingDotsEffect(
                activeDotColor: Color(0xFF12E0ED),
                dotColor: Color.fromARGB(255, 18, 224, 237).withOpacity(0.5),
                dotHeight: 15,
                dotWidth: 15
              ),
            )
        ],
      ),
    );
  }
}