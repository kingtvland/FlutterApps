import '../credit_card_and_debit_screen/widgets/listvolume_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:studentapp/core/app_export.dart';
import 'package:studentapp/widgets/app_bar/appbar_image.dart';
import 'package:studentapp/widgets/app_bar/appbar_title.dart';
import 'package:studentapp/widgets/app_bar/custom_app_bar.dart';
import 'package:studentapp/widgets/custom_button.dart';

class CreditCardAndDebitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: () => onTapArrowleft21(context)),
                title: AppbarTitle(
                    text: "Credit Card And Debit",
                    margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 9, bottom: 9),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 8, right: 16),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(14));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return ListvolumeItemWidget(
                                    onTapCreditCard: () =>
                                        onTapCreditCard(context));
                              })),
                      Spacer()
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "Add Card",
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () => onTapAddcard(context))));
  }

  onTapCreditCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lailyfaFebrinaCardScreen);
  }

  onTapAddcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addCardScreen);
  }

  onTapArrowleft21(BuildContext context) {
    Navigator.pop(context);
  }
}
