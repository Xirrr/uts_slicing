import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/playlist_item_model.dart';
// ignore_for_file: must_be_immutable

class PlaylistItemWidget extends StatelessWidget {
  PlaylistItemWidget(this.playlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  PlaylistItemModel playlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(4.h),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: playlistItemModelObj.playlistImage!,
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
                  playlistItemModelObj.playlistTitle!,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 1.v),
              Container(
                width: 130.h,
                margin: EdgeInsets.only(left: 4.h),
                child: Text(
                  playlistItemModelObj.playlistArtists!,
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
        ),
      ),
    );
  }
}
