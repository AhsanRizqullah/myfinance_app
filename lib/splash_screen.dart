import 'package:flutter/material.dart';
import 'package:myfinance_app/interface/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new Otp(),
        image: Image(image: AssetImage('assets/images/myfinance_splash.png'),),
        backgroundColor: Color(0xFF2B353D),
        loaderColor: Colors.transparent,
      photoSize: 80.0,

    );
  }
}
