import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';
import 'package:health_care_app/widgets/custom_elevated_button.dart';
import 'package:health_care_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 15, top: 35, right: 15, bottom: 35),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgHidoclogo42x115,
                              height: getVerticalSize(42),
                              width: getHorizontalSize(115),
                              margin: getMargin(top: 70)),
                          Padding(
                              padding: getPadding(top: 25),
                              child: Text("Let’s Get Started",
                                  style: CustomTextStyles
                                      .titleMediumPoppinsOnPrimary)),
                          Padding(
                              padding: getPadding(top: 9),
                              child: Text("Create an new account",
                                  style: CustomTextStyles
                                      .bodySmallPoppinsPrimary)),
                          CustomTextFormField(
                              controller: fullNameController,
                              margin: getMargin(top: 26),
                              hintText: "Full Name",
                              hintStyle:
                                  CustomTextStyles.bodySmallPoppinsBluegray300,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48))),
                          CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(top: 8),
                              hintText: "Your Email",
                              hintStyle:
                                  CustomTextStyles.bodySmallPoppinsBluegray300,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgMail)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48))),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(top: 8),
                              hintText: "Password",
                              hintStyle:
                                  CustomTextStyles.bodySmallPoppinsBluegray300,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true),
                          CustomTextFormField(
                              controller: passwordController1,
                              margin: getMargin(top: 8),
                              hintText: "Password Again",
                              hintStyle:
                                  CustomTextStyles.bodySmallPoppinsBluegray300,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 12, right: 10, bottom: 12),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(48)),
                              obscureText: true),
                          CustomElevatedButton(
                              text: "Sign up",
                              margin: getMargin(top: 39),
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallTeal300),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                onTapTxtHaveanaccount(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Have an ",
                                        style: CustomTextStyles
                                            .bodySmallPoppinsPrimary_1),
                                    TextSpan(
                                        text: "account",
                                        style: CustomTextStyles
                                            .bodySmallPoppinsPrimary_1),
                                    TextSpan(
                                        text: "?",
                                        style: CustomTextStyles
                                            .bodySmallPoppinsPrimary_1),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "Sign In",
                                        style: CustomTextStyles
                                            .labelLargePoppinsPrimaryBold)
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapTxtHaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
