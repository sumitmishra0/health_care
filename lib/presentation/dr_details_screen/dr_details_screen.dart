import '../dr_details_screen/widgets/timeslots_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';
import 'package:health_care_app/widgets/app_bar/appbar_image.dart';
import 'package:health_care_app/widgets/app_bar/appbar_image_1.dart';
import 'package:health_care_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:health_care_app/widgets/app_bar/custom_app_bar.dart';
import 'package:health_care_app/widgets/custom_elevated_button.dart';
import 'package:health_care_app/widgets/custom_floating_text_field.dart';
import 'package:health_care_app/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class DrDetailsScreen extends StatelessWidget {
  DrDetailsScreen({Key? key}) : super(key: key);

  TextEditingController dateController = TextEditingController();

  TextEditingController datetwoController = TextEditingController();

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
                title: AppbarSubtitle(text: "Doctor detail"),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgComponent1,
                      margin: getMargin(all: 20))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 20, right: 20),
                          padding: getPadding(
                              left: 10, top: 6, right: 10, bottom: 6),
                          decoration: AppDecoration.outlineBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgThumbnail1,
                                height: getSize(111),
                                width: getSize(111),
                                margin: getMargin(top: 4)),
                            Padding(
                                padding:
                                    getPadding(left: 17, top: 8, bottom: 8),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Dr. Marcus Horizon",
                                          style:
                                              CustomTextStyles.titleMedium18),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("Chardiologist",
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: getPadding(left: 3, top: 16),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgStar,
                                                height: getSize(13),
                                                width: getSize(13),
                                                margin: getMargin(bottom: 2)),
                                            Padding(
                                                padding: getPadding(left: 4),
                                                child: Text("4,7",
                                                    style: CustomTextStyles
                                                        .labelLargeCyan300))
                                          ])),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: Row(children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation,
                                                height: getSize(13),
                                                width: getSize(13),
                                                margin: getMargin(bottom: 2)),
                                            Padding(
                                                padding: getPadding(left: 3),
                                                child: Text("800m away",
                                                    style: theme
                                                        .textTheme.labelLarge))
                                          ]))
                                    ]))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 21, top: 23),
                              child: Text("About",
                                  style: theme.textTheme.titleMedium))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(313),
                              margin: getMargin(left: 21, top: 11),
                              child: ReadMoreText(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam... ",
                                  trimLines: 3,
                                  colorClickableText: appTheme.cyan300,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "Read more",
                                  moreStyle: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.67),
                                  lessStyle: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.67)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 24, top: 33),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    CustomFloatingTextField(
                                        width: getHorizontalSize(46),
                                        controller: dateController,
                                        labelText: "Mon",
                                        labelStyle:
                                            CustomTextStyles.titleMedium18,
                                        hintText: "Mon",
                                        hintStyle:
                                            CustomTextStyles.titleMedium18),
                                    Container(
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 11,
                                            top: 13,
                                            right: 11,
                                            bottom: 13),
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
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 2),
                                                  child: Text("Tue",
                                                      style: CustomTextStyles
                                                          .bodySmall10)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("22",
                                                      style: CustomTextStyles
                                                          .titleMedium18))
                                            ])),
                                    CustomFloatingTextField(
                                        width: getHorizontalSize(46),
                                        margin: getMargin(left: 12),
                                        controller: datetwoController,
                                        labelText: "Wed",
                                        labelStyle:
                                            CustomTextStyles.titleMediumPrimary,
                                        hintText: "Wed",
                                        hintStyle:
                                            CustomTextStyles.titleMediumPrimary,
                                        textInputAction: TextInputAction.done,
                                        borderDecoration:
                                            FloatingTextFormFieldStyleHelper
                                                .fillCyan,
                                        fillColor: appTheme.cyan300),
                                    Container(
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 11,
                                            top: 13,
                                            right: 11,
                                            bottom: 13),
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
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 2),
                                                  child: Text("Thu",
                                                      style: CustomTextStyles
                                                          .bodySmall10)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("24",
                                                      style: CustomTextStyles
                                                          .titleMedium18))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 11,
                                            top: 13,
                                            right: 11,
                                            bottom: 13),
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
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 5),
                                                  child: Text("Fri",
                                                      style: CustomTextStyles
                                                          .bodySmall10)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("25",
                                                      style: CustomTextStyles
                                                          .titleMedium18))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 11,
                                            top: 13,
                                            right: 11,
                                            bottom: 13),
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
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 3),
                                                  child: Text("Sat",
                                                      style: CustomTextStyles
                                                          .bodySmall10)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("26",
                                                      style: CustomTextStyles
                                                          .titleMedium18))
                                            ])),
                                    Container(
                                        margin: getMargin(left: 12),
                                        padding: getPadding(
                                            left: 11,
                                            top: 14,
                                            right: 11,
                                            bottom: 14),
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
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 3),
                                                  child: Text("Sat",
                                                      style: CustomTextStyles
                                                          .bodySmall10)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("26",
                                                      style: CustomTextStyles
                                                          .titleMedium18))
                                            ]))
                                  ])))),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Divider(
                              indent: getHorizontalSize(20),
                              endIndent: getHorizontalSize(20))),
                      Padding(
                          padding: getPadding(top: 37, bottom: 5),
                          child: Wrap(
                              runSpacing: getVerticalSize(13),
                              spacing: getHorizontalSize(13),
                              children: List<Widget>.generate(
                                  9, (index) => TimeslotsItemWidget())))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 28),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: getSize(50),
                      width: getSize(50),
                      padding: getPadding(all: 13),
                      decoration: IconButtonStyleHelper.fillBlueGray,
                      onTap: () {
                        onTapBtnCarone(context);
                      },
                      child: CustomImageView(svgPath: ImageConstant.imgCar)),
                  Expanded(
                      child: CustomElevatedButton(
                          text: "Book Apointment",
                          margin: getMargin(left: 19),
                          onTap: () {
                            onTapBookapointment(context);
                          }))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the chatScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the chatScreen.
  onTapBtnCarone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }

  /// Navigates to the bookAnAppointmentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the bookAnAppointmentScreen.
  onTapBookapointment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookAnAppointmentScreen);
  }
}
