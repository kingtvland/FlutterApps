import '../ship_to_screen/widgets/shipto_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:studentapp/core/app_export.dart';
import 'package:studentapp/widgets/app_bar/appbar_image.dart';
import 'package:studentapp/widgets/app_bar/appbar_title.dart';
import 'package:studentapp/widgets/app_bar/custom_app_bar.dart';
import 'package:studentapp/widgets/custom_button.dart';

class ShipToScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(28),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 14),
                    onTap: () => onTapArrowleft11(context)),
                title:
                    AppbarTitle(text: "Ship To", margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(28),
                      width: getHorizontalSize(24),
                      svgPath: ImageConstant.imgPlus28x24,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 14),
                      onTap: () => onTapPlus(context))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 4, right: 16),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(22));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ShiptoItemWidget();
                    })),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Next",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () => onTapNext(context))));
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }

  onTapPlus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addressScreen);
  }
}
