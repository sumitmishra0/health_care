import '../dashboard_page/widgets/dashboard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';
import 'package:health_care_app/widgets/app_bar/appbar_image.dart';
import 'package:health_care_app/widgets/app_bar/appbar_title.dart';
import 'package:health_care_app/widgets/app_bar/custom_app_bar.dart';
import 'package:health_care_app/widgets/custom_elevated_button.dart';
import 'package:health_care_app/widgets/custom_icon_button.dart';
import 'package:health_care_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(126),
                title: AppbarTitle(
                    text: "Find your desire \nhealt solution",
                    margin: getMargin(left: 20)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgNotificationicon,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 19))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 20),
                    child: Padding(
                        padding: getPadding(left: 20, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSearchView(
                                  margin: getMargin(right: 20),
                                  controller: searchController,
                                  hintText: "Search doctor, drugs, articles...",
                                  hintStyle: theme.textTheme.bodySmall!,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 17,
                                          top: 10,
                                          right: 12,
                                          bottom: 9),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40)),
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15)),
                                      child: IconButton(
                                          onPressed: () {
                                            searchController.clear();
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600)))),
                              Padding(
                                  padding: getPadding(top: 20, right: 20),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: getSize(71),
                                        width: getSize(71),
                                        padding: getPadding(all: 16),
                                        decoration:
                                            IconButtonStyleHelper.fillCyan,
                                        onTap: () {
                                          onTapBtnUserone(context);
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgUserPrimary)),
                                    CustomIconButton(
                                        height: getSize(71),
                                        width: getSize(71),
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 14),
                                        decoration:
                                            IconButtonStyleHelper.fillCyan,
                                        onTap: () {
                                          onTapBtnCalculatorone(context);
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCalculator)),
                                    CustomIconButton(
                                        height: getSize(71),
                                        width: getSize(71),
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 15),
                                        decoration:
                                            IconButtonStyleHelper.fillCyan,
                                        onTap: () {
                                          onTapBtnAmbulanceone(context);
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgAmbulance)),
                                    CustomIconButton(
                                        height: getSize(71),
                                        width: getSize(71),
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 18),
                                        decoration:
                                            IconButtonStyleHelper.fillCyan,
                                        onTap: () {
                                          onTapBtnArticalsicon(context);
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArticalsicon))
                                  ])),
                              Container(
                                  width: getHorizontalSize(335),
                                  margin: getMargin(top: 20, right: 20),
                                  padding: getPadding(
                                      left: 25, top: 11, right: 25, bottom: 11),
                                  decoration: AppDecoration.fillBlueGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(186),
                                            margin: getMargin(left: 1, top: 3),
                                            child: Text(
                                                "Early protection for\nyour family healt",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.titleLarge!
                                                    .copyWith(height: 1.25))),
                                        CustomElevatedButton(
                                            height: getVerticalSize(29),
                                            width: getHorizontalSize(108),
                                            text: "Learn more",
                                            margin: getMargin(top: 6),
                                            buttonTextStyle: CustomTextStyles
                                                .labelLargePrimary)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 39, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Top Doctor",
                                            style: theme.textTheme.titleMedium),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeall(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 3),
                                                child: Text("See all",
                                                    style: CustomTextStyles
                                                        .bodySmallCyan300)))
                                      ])),
                              SizedBox(
                                  height: getVerticalSize(186),
                                  child: ListView.separated(
                                      padding: getPadding(top: 13),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            width: getHorizontalSize(14));
                                      },
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return DashboardItemWidget(
                                            onTapDoctor: () {
                                          onTapDoctor(context);
                                        });
                                      })),
                              Padding(
                                  padding: getPadding(top: 28, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Healt article",
                                            style: theme.textTheme.titleMedium),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeallone(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(top: 3),
                                                child: Text("See all",
                                                    style: CustomTextStyles
                                                        .bodySmallCyan300)))
                                      ])),
                              Container(
                                  margin: getMargin(top: 15, right: 20),
                                  padding: getPadding(all: 6),
                                  decoration: AppDecoration.outlineBluegray50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgThumbnail,
                                            height: getSize(55),
                                            width: getSize(55)),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 7, bottom: 7),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      width: getHorizontalSize(
                                                          179),
                                                      child: Text(
                                                          "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .labelMediumPrimaryContainer)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Jun 10, 2021 ",
                                                                style: theme
                                                                    .textTheme
                                                                    .labelSmall),
                                                            Container(
                                                                height:
                                                                    getSize(2),
                                                                width:
                                                                    getSize(2),
                                                                margin:
                                                                    getMargin(
                                                                        left: 5,
                                                                        top: 3,
                                                                        bottom:
                                                                            4),
                                                                decoration: BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .errorContainer,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(1)))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            5),
                                                                child: Text(
                                                                    "5min read",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelSmall))
                                                          ]))
                                                ]))
                                      ]))
                            ]))))));
  }

  /// Navigates to the drListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the drListScreen.
  onTapBtnUserone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.drListScreen);
  }

  /// Navigates to the pharmacyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the pharmacyScreen.
  onTapBtnCalculatorone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pharmacyScreen);
  }

  /// Navigates to the ambulanceScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the ambulanceScreen.
  onTapBtnAmbulanceone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ambulanceScreen);
  }

  /// Navigates to the articleScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the articleScreen.
  onTapBtnArticalsicon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.articleScreen);
  }

  /// Navigates to the drListScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the drListScreen.
  onTapTxtSeeall(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.drListScreen);
  }

  /// Navigates to the articleScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the articleScreen.
  onTapTxtSeeallone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.articleScreen);
  }

  /// Navigates to the drDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the drDetailsScreen.
  onTapDoctor(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.drDetailsScreen);
  }
}
