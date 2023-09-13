import '../message_page/widgets/message_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';
import 'package:health_care_app/widgets/custom_icon_button.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  MessagePageState createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage>
    with AutomaticKeepAliveClientMixin<MessagePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Expanded(
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Padding(
                                  padding:
                                      getPadding(left: 20, top: 31, right: 20),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: ListView.separated(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(24));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return MessageItemWidget(
                                                      onTapChat: () {
                                                    onTapChat(context);
                                                  });
                                                })),
                                        CustomIconButton(
                                            height: getSize(55),
                                            width: getSize(55),
                                            margin: getMargin(top: 237),
                                            padding: getPadding(all: 15),
                                            decoration: IconButtonStyleHelper
                                                .outlineBlack,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgUserPrimary55x55))
                                      ]))))
                    ])))));
  }

  /// Navigates to the chatScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the chatScreen.
  onTapChat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }
}
