import 'package:flutter/material.dart';
import 'package:health_care_app/core/app_export.dart';

// ignore: must_be_immutable
class TimeslotsItemWidget extends StatelessWidget {
  const TimeslotsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 23,
        top: 11,
        right: 23,
        bottom: 11,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "09:00 AM",
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.cyan300,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.teal100,
          width: getHorizontalSize(1),
        ),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(10),
        ),
      ),
      onSelected: (value) {},
    );
  }
}
