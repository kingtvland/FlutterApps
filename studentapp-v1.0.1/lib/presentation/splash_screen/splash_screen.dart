import 'package:flutter/material.dart';
import 'package:studentapp/core/app_export.dart';
import 'package:studentapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.lightBlueA200,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AppNavigationScreen()));
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: getSize(
                    72,
                  ),
                  width: getSize(
                    72,
                  ),
                  margin: getMargin(
                    bottom: 5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
