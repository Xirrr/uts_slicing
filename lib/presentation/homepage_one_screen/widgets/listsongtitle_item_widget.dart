import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/listsongtitle_item_model.dart';
// ignore_for_file: must_be_immutable

class ListsongtitleItemWidget extends StatelessWidget {
  ListsongtitleItemWidget(this.listsongtitleItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListsongtitleItemModel listsongtitleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
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
                imagePath: listsongtitleItemModelObj.songImage!,
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
                  listsongtitleItemModelObj.songTitle!,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  listsongtitleItemModelObj.artistName!,
                  style: theme.textTheme.bodySmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
