import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';

// ignore: must_be_immutable
class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 5,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail,
            height: getSize(59),
            width: getSize(59),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 5,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargePrimaryContainer.copyWith(
                    height: 1.33,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        style: CustomTextStyles.labelSmall9,
                      ),
                      Container(
                        height: getSize(2),
                        width: getSize(2),
                        margin: getMargin(
                          left: 4,
                          top: 4,
                          bottom: 4,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          "",
                          style: CustomTextStyles.labelSmallCyan3009,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgBookmarkCyan300,
            height: getSize(15),
            width: getSize(15),
            margin: getMargin(
              left: 42,
              top: 7,
              bottom: 38,
            ),
          ),
        ],
      ),
    );
  }
}
