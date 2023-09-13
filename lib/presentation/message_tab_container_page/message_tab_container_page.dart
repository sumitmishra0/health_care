import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';
import 'package:health_care_app/presentation/message_page/message_page.dart';
import 'package:health_care_app/widgets/app_bar/appbar_title.dart';
import 'package:health_care_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MessageTabContainerPage extends StatefulWidget {
  const MessageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  MessageTabContainerPageState createState() => MessageTabContainerPageState();
}

class MessageTabContainerPageState extends State<MessageTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
          title: AppbarTitle(
            text: "Message",
            margin: getMargin(
              left: 21,
            ),
          ),
          actions: [
            Container(
              height: getVerticalSize(28),
              width: getHorizontalSize(24),
              margin: getMargin(
                left: 20,
                top: 11,
                right: 20,
                bottom: 16,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgMoreicon,
                    height: getVerticalSize(16),
                    width: getHorizontalSize(4),
                    alignment: Alignment.topRight,
                    margin: getMargin(
                      left: 20,
                      bottom: 12,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgClockPrimarycontainer,
                    height: getSize(24),
                    width: getSize(24),
                    alignment: Alignment.topCenter,
                    margin: getMargin(
                      top: 4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(46),
                width: getHorizontalSize(335),
                margin: getMargin(
                  top: 27,
                ),
                decoration: BoxDecoration(
                  color: appTheme.blueGray50,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(8),
                  ),
                ),
                child: TabBar(
                  controller: tabviewController,
                  isScrollable: true,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(14),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: theme.colorScheme.primaryContainer,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(14),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.cyan300,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(8),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "All",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Group",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Private",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getVerticalSize(574),
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    MessagePage(),
                    MessagePage(),
                    MessagePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
