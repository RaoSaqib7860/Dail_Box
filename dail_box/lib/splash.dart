import 'package:dail_box/board.dart';
import 'package:dail_box/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(BoardScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/splash.png'))),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: blueColor.withOpacity(0.8),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/icons/logo.png'),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Jo bhi Jab bhi',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        wordSpacing: 5),
                  ),
                  Text(
                    'Jahan bhi',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        wordSpacing: 5),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
