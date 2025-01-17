import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:studentapp/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultItemWidget extends StatelessWidget {
  SearchresultItemWidget({this.onTapProduct});

  VoidCallback? onTapProduct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProduct!();
      },
      child: Container(
        padding: getPadding(
          all: 16,
        ),
        decoration: AppDecoration.outlineBlue501.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProductimage109x1093,
              height: getSize(
                133,
              ),
              width: getSize(
                133,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  5,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                107,
              ),
              margin: getMargin(
                top: 8,
              ),
              child: Text(
                "Nike Air Max 270 React ENG",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold12Indigo900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: RatingBar.builder(
                initialRating: 4,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemSize: getVerticalSize(
                  12,
                ),
                unratedColor: ColorConstant.blue50,
                itemCount: 5,
                updateOnDrag: true,
                onRatingUpdate: (rating) {},
                itemBuilder: (context, _) {
                  return Icon(
                    Icons.star,
                    color: ColorConstant.yellow700,
                  );
                },
              ),
            ),
            Padding(
              padding: getPadding(
                top: 18,
              ),
              child: Text(
                "\$299,43",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold12.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Row(
                children: [
                  Text(
                    "\$534,33",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                    ),
                    child: Text(
                      "24% Off",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold10.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
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
