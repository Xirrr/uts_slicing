import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/playlistlist_item_model.dart';
// ignore_for_file: must_be_immutable

class PlaylistlistItemWidget extends StatelessWidget {
  PlaylistlistItemWidget(this.playlistlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  PlaylistlistItemModel playlistlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 200.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: playlistlistItemModelObj.playlistImage!,
            height: 100.v,
            width: 192.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              playlistlistItemModelObj.playlistTitle!,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            width: 130.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Text(
              playlistlistItemModelObj.playlistArtists!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }
}
