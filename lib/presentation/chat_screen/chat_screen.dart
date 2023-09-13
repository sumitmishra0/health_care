import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';
import 'package:health_care_app/widgets/app_bar/appbar_image.dart';
import 'package:health_care_app/widgets/app_bar/appbar_image_1.dart';
import 'package:health_care_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:health_care_app/widgets/app_bar/custom_app_bar.dart';
import 'package:health_care_app/widgets/custom_elevated_button.dart';
import 'package:health_care_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

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
                title: AppbarSubtitle(
                    text: "Dr. Marcus Horizon", margin: getMargin(left: 18)),
                actions: [
                  AppbarImage(
                      svgPath: ImageConstant.imgVideocamera,
                      margin: getMargin(left: 20, top: 18, right: 18)),
                  AppbarImage(
                      svgPath: ImageConstant.imgCall,
                      margin: getMargin(left: 15, top: 18, right: 18)),
                  AppbarImage(
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 20, top: 20, right: 38, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 24, right: 20, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 1),
                          padding: getPadding(
                              left: 42, top: 16, right: 42, bottom: 16),
                          decoration: AppDecoration.outlineBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Consultion Start",
                                    style: CustomTextStyles.titleMediumCyan300),
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Text(
                                        "You can consult your problem to the doctor",
                                        style: theme.textTheme.labelLarge))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 20),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse27image,
                                height: getSize(40),
                                width: getSize(40)),
                            Padding(
                                padding: getPadding(left: 13, top: 4),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Dr. Marcus Horizon",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("10 min ago",
                                              style: CustomTextStyles
                                                  .labelMediumErrorContainer))
                                    ]))
                          ])),
                      Container(
                          margin: getMargin(left: 1, top: 10, right: 1),
                          padding: getPadding(
                              left: 15, top: 8, right: 15, bottom: 8),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Padding(
                              padding: getPadding(top: 2),
                              child: Text("Hello, How can i help you?",
                                  style: theme.textTheme.bodyMedium))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: getMargin(left: 98, top: 15),
                              padding: getPadding(
                                  left: 14, top: 9, right: 14, bottom: 9),
                              decoration: AppDecoration.bg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Container(
                                  width: getHorizontalSize(205),
                                  margin: getMargin(top: 2),
                                  child: Text(
                                      "I have suffering from headache \nand cold for 3 days, I took 2 \ntablets of dolo, but still pain",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.bodyMediumPrimary
                                          .copyWith(height: 1.43))))),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse27image,
                                height: getSize(40),
                                width: getSize(40)),
                            Padding(
                                padding: getPadding(left: 13, top: 4),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Dr. Marcus Horizon",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("5 min ago",
                                              style: CustomTextStyles
                                                  .labelMediumErrorContainer))
                                    ]))
                          ])),
                      Container(
                          margin: getMargin(left: 1, top: 10, right: 1),
                          padding: getPadding(
                              left: 13, top: 9, right: 13, bottom: 9),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: SizedBox(
                              width: getHorizontalSize(193),
                              child: Text(
                                  "Ok, Do you have fever? is the\nheadchace severe",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium!
                                      .copyWith(height: 1.43)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(237),
                              margin: getMargin(left: 98, top: 15),
                              padding: getPadding(
                                  left: 14, top: 7, right: 14, bottom: 7),
                              decoration: AppDecoration.bg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Container(
                                  width: getHorizontalSize(162),
                                  margin: getMargin(top: 2, right: 47),
                                  child: Text(
                                      "I don,t have any fever, \nbut headchace is painful",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.bodyMediumPrimary
                                          .copyWith(height: 1.43))))),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse27image,
                                height: getSize(40),
                                width: getSize(40)),
                            Padding(
                                padding:
                                    getPadding(left: 13, top: 4, bottom: 2),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Dr. Marcus Horizon",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("Online",
                                              style: CustomTextStyles
                                                  .labelMediumErrorContainer))
                                    ]))
                          ])),
                      Container(
                          height: getVerticalSize(22),
                          width: getHorizontalSize(58),
                          padding: getPadding(
                              left: 13, top: 8, right: 13, bottom: 8),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL5),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgGroup141,
                              height: getVerticalSize(5),
                              width: getHorizontalSize(32),
                              alignment: Alignment.bottomCenter))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 20, right: 20, bottom: 26),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomTextFormField(
                      width: getHorizontalSize(206),
                      controller: messageController,
                      margin: getMargin(bottom: 1),
                      hintText: "Type message ...",
                      hintStyle: CustomTextStyles.bodySmallPoppinsBluegray300,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: getMargin(
                              left: 10, top: 11, right: 8, bottom: 10),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgAttachmentIcon)),
                      prefixConstraints:
                          BoxConstraints(maxHeight: getVerticalSize(49))),
                  CustomElevatedButton(
                      width: getHorizontalSize(111),
                      text: "Send",
                      margin: getMargin(left: 17))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
