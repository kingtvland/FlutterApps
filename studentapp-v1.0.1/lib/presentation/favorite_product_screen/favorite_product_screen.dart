import '../favorite_product_screen/widgets/gridproductname_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:studentapp/core/app_export.dart';
import 'package:studentapp/widgets/app_bar/appbar_image.dart';
import 'package:studentapp/widgets/app_bar/appbar_title.dart';
import 'package:studentapp/widgets/app_bar/custom_app_bar.dart';

class FavoriteProductScreen extends StatelessWidget {
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
                    onTap: () => onTapArrowleft1(context)),
                title: AppbarTitle(
                    text: "Favorite Product", margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 16, top: 8, right: 16),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(283),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(13),
                        crossAxisSpacing: getHorizontalSize(13)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GridproductnameItemWidget(
                          onTapProduct: () => onTapProduct(context));
                    }))));
  }

  onTapProduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
