import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

// ignore: must_be_immutable
class TimeSelectionItemWidget extends StatelessWidget {
  TimeSelectionItemWidget({
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 25,
        top: 11,
        right: 25,
        bottom: 11,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "lbl_09_00_am".tr,
        style: TextStyle(
          color: appTheme.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.whiteA700,
      selectedColor: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray100,
          width: getHorizontalSize(1),
        ),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(15),
        ),
      ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
