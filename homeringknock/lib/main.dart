// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/authontication/enterverificationpage.dart';
import 'package:myapp/authontication/forgotpasswordpage.dart';
import 'package:myapp/authontication/introonepage.dart';
import 'package:myapp/authontication/introtwopage.dart';
import 'package:myapp/authontication/registrationpage.dart';
import 'package:myapp/authontication/resetpasswordpage.dart';
import 'package:myapp/authontication/signinpage.dart';
import 'package:myapp/authontication/signupaccountchoosepage.dart';
import 'package:myapp/authontication/signupintropage.dart';
import 'package:myapp/authontication/splashscreen.dart';
import 'package:myapp/nav_bar_page/nav_bar_controller.dart';
import 'package:myapp/ui/categories.dart';
import 'package:myapp/ui/contactmessage.dart';
import 'package:myapp/ui/mostpopular.dart';
import 'package:myapp/ui/ordername.dart';
import 'package:myapp/ui/subcategory.dart';
import 'package:myapp/ui/trackingpost.dart';
import 'package:myapp/ui/trackingpostorder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: BottomNavController(),
      //home: CategoriesPage(),
      //home: MostPopularPage(),
      /*initialRoute: SplashPage.routeName,
        routes: {
          SplashPage.routeName: (context) => SplashPage(),
          IntroOnePage.routename: (context) => IntroOnePage(),
          IntroTwoPage.routename: (context) => IntroTwoPage(),
          SignInPage.routename: (context) => SignInPage(),
          SignIntroPage.routename: (context) => SignIntroPage(),
          SignAccountChoosePage.routename: (context) => SignAccountChoosePage(),
          RegistrationPage.routename: (context) => RegistrationPage(),
          ForegPasswordPage.routename: (context) => ForegPasswordPage(),
          VerificationPage.routename: (context) => VerificationPage(),
          ResetPasswordPage.routename: (context) => ResetPasswordPage(),
        }*/
      // home: ContractMessage(),
      //home: TrackingPostOrder(),
      //home: OrderName(),
      home: TrackingPostOrderTwo(),
    );
  }
}
