import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';
import 'package:health_care_app/widgets/custom_elevated_button.dart';
import 'package:health_care_app/widgets/custom_outlined_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 17, top: 46, right: 17, bottom: 46),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      CustomImageView(
                          imagePath: ImageConstant.imgHidoclogo,
                          height: getVerticalSize(368),
                          width: getHorizontalSize(338)),
                      CustomOutlinedButton(
                          text: "Login",
                          margin: getMargin(left: 3, top: 87, right: 3),
                          onTap: () {
                            onTapLoginme(context);
                          }),
                      CustomElevatedButton(
                          text: "Sign up",
                          margin: getMargin(left: 3, top: 15, right: 3),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles.titleSmallTeal300,
                          onTap: () {
                            onTapSignup(context);
                          })
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapLoginme(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signupScreen.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
