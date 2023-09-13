import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';
import 'package:health_care_app/widgets/app_bar/appbar_image.dart';
import 'package:health_care_app/widgets/app_bar/appbar_image_1.dart';
import 'package:health_care_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:health_care_app/widgets/app_bar/custom_app_bar.dart';
import 'package:health_care_app/widgets/custom_elevated_button.dart';
import 'package:health_care_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class PharmacyScreen extends StatelessWidget {
  PharmacyScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(45),
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 21, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Pharmacy"),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgCart,
                      margin:
                          getMargin(left: 20, top: 16, right: 20, bottom: 16),
                      onTap: () {
                        onTapCartone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 18, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          margin: getMargin(left: 20, top: 5, right: 20),
                          controller: searchController,
                          hintText: "Search drugs, category...",
                          hintStyle: theme.textTheme.bodySmall!,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 11, right: 12, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Container(
                          width: getHorizontalSize(335),
                          margin: getMargin(left: 20, top: 25, right: 20),
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(176),
                                    margin: getMargin(left: 1, top: 3),
                                    child: Text(
                                        "Order quickly with\nPrescription",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleLarge!
                                            .copyWith(height: 1.25))),
                                CustomElevatedButton(
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(150),
                                    text: "Upload Prescription",
                                    margin: getMargin(top: 2),
                                    buttonTextStyle:
                                        CustomTextStyles.labelLargePrimary)
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 49, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Popular Product",
                                    style:
                                        CustomTextStyles.titleMediumBlack900),
                                Padding(
                                    padding: getPadding(bottom: 3),
                                    child: Text("See all",
                                        style:
                                            CustomTextStyles.bodySmallCyan300))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 21, top: 26),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Expanded(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapDrugs1(context);
                                              },
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 9,
                                                      right: 7,
                                                      bottom: 9),
                                                  decoration: AppDecoration
                                                      .outlineBlueGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgDrugthumbnail,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            alignment: Alignment
                                                                .center,
                                                            margin: getMargin(
                                                                top: 15)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 29),
                                                            child: Text(
                                                                "Panadol",
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1),
                                                            child: Text("20pcs",
                                                                style: CustomTextStyles
                                                                    .labelSmall9)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 5),
                                                            child: Row(
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "15.99",
                                                                          style:
                                                                              CustomTextStyles.titleSmallBlack900)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgPlus,
                                                                      height:
                                                                          getSize(
                                                                              18),
                                                                      width:
                                                                          getSize(
                                                                              18),
                                                                      margin: getMargin(
                                                                          left:
                                                                              38))
                                                                ]))
                                                      ]))),
                                          Container(
                                              margin: getMargin(left: 21),
                                              padding: getPadding(all: 7),
                                              decoration: AppDecoration
                                                  .outlineBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgDrugthumbnail,
                                                        height: getSize(50),
                                                        width: getSize(50),
                                                        alignment:
                                                            Alignment.center,
                                                        margin:
                                                            getMargin(top: 17)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 29),
                                                        child: Text(
                                                            "Bodrex Herbal",
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900)),
                                                    Text("100ml",
                                                        style: CustomTextStyles
                                                            .labelSmall9),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Row(children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "7.99",
                                                                  style: CustomTextStyles
                                                                      .titleSmallBlack900)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgPlus,
                                                              height:
                                                                  getSize(18),
                                                              width:
                                                                  getSize(18),
                                                              margin: getMargin(
                                                                  left: 47))
                                                        ]))
                                                  ]))
                                        ])),
                                    Container(
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 7),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse27image,
                                                  height: getSize(50),
                                                  width: getSize(50),
                                                  alignment: Alignment.center,
                                                  margin: getMargin(top: 17)),
                                              Padding(
                                                  padding: getPadding(top: 28),
                                                  child: Text("Konidin",
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("3pcs",
                                                      style: CustomTextStyles
                                                          .labelSmall9)),
                                              Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text("5.99",
                                                            style: CustomTextStyles
                                                                .titleSmallBlack900)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlus,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        margin:
                                                            getMargin(left: 45))
                                                  ]))
                                            ]))
                                  ])))),
                      Padding(
                          padding: getPadding(left: 20, top: 19, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Product on Sale",
                                    style:
                                        CustomTextStyles.titleMediumBlack900),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 2),
                                    child: Text("See all",
                                        style:
                                            CustomTextStyles.bodySmallCyan300))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 21, top: 14),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Expanded(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapDrugs4(context);
                                              },
                                              child: Container(
                                                  padding: getPadding(all: 7),
                                                  decoration: AppDecoration
                                                      .outlineBlueGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgDrugthumbnail,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            alignment: Alignment
                                                                .center,
                                                            margin: getMargin(
                                                                top: 19)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 28),
                                                            child: Text(
                                                                "OBH Combi",
                                                                style: CustomTextStyles
                                                                    .labelLargeBlack900)),
                                                        Text("75ml",
                                                            style:
                                                                CustomTextStyles
                                                                    .labelSmall9),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Row(
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Text(
                                                                          "9.99",
                                                                          style:
                                                                              CustomTextStyles.titleSmallBlack900)),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgPlus,
                                                                      height:
                                                                          getSize(
                                                                              18),
                                                                      width:
                                                                          getSize(
                                                                              18),
                                                                      margin: getMargin(
                                                                          left:
                                                                              45))
                                                                ]))
                                                      ]))),
                                          Container(
                                              margin: getMargin(left: 17),
                                              padding: getPadding(all: 7),
                                              decoration: AppDecoration
                                                  .outlineBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgDrugthumbnail,
                                                        height: getSize(50),
                                                        width: getSize(50),
                                                        alignment:
                                                            Alignment.center,
                                                        margin:
                                                            getMargin(top: 19)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 28),
                                                        child: Text("Betadine",
                                                            style: CustomTextStyles
                                                                .labelLargeBlack900)),
                                                    Text("50ml",
                                                        style: CustomTextStyles
                                                            .labelSmall9),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Row(children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "6.99",
                                                                  style: CustomTextStyles
                                                                      .titleSmallBlack900)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgPlus,
                                                              height:
                                                                  getSize(18),
                                                              width:
                                                                  getSize(18),
                                                              margin: getMargin(
                                                                  left: 45))
                                                        ]))
                                                  ]))
                                        ])),
                                    Container(
                                        margin: getMargin(left: 17),
                                        padding: getPadding(all: 7),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgDrugthumbnail,
                                                  height: getSize(50),
                                                  width: getSize(50),
                                                  alignment: Alignment.center,
                                                  margin: getMargin(top: 19)),
                                              Padding(
                                                  padding: getPadding(top: 28),
                                                  child: Text("Bodrexin",
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              Text("50ml",
                                                  style: CustomTextStyles
                                                      .labelSmall9),
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text("7.99",
                                                            style: CustomTextStyles
                                                                .titleSmallBlack900)),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlus,
                                                        height: getSize(18),
                                                        width: getSize(18),
                                                        margin:
                                                            getMargin(left: 47))
                                                  ]))
                                            ]))
                                  ]))))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the cartScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cartScreen.
  onTapCartone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }

  /// Navigates to the drugDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the drugDetailsScreen.
  onTapDrugs1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.drugDetailsScreen);
  }

  /// Navigates to the drugDetailsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the drugDetailsScreen.
  onTapDrugs4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.drugDetailsScreen);
  }
}
