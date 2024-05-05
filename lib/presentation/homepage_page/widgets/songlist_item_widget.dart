import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/songlist_item_model.dart';
// ignore_for_file: must_be_immutable

class SonglistItemWidget extends StatelessWidget {
  SonglistItemWidget(this.songlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SonglistItemModel songlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 160.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: songlistItemModelObj.songImage!,
            height: 100.v,
            width: 152.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              songlistItemModelObj.songTitle!,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              songlistItemModelObj.artistName!,
              style: theme.textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
