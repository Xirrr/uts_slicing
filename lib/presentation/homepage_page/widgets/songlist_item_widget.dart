import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/songlist_item_model.dart';

class SonglistItemWidget extends StatelessWidget {
  final SonglistItemModel songlistItemModelObj;
  final VoidCallback onTap;

  SonglistItemWidget(this.songlistItemModelObj, {Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
              imagePath: songlistItemModelObj.songImage,
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
                songlistItemModelObj.songTitle,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                songlistItemModelObj.artistName,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
