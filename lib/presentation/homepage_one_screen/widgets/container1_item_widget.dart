import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/container1_item_model.dart';
// ignore_for_file: must_be_immutable

class Container1ItemWidget extends StatelessWidget {
  Container1ItemWidget(this.container1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Container1ItemModel container1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: container1ItemModelObj.jamesAdamOne!,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 47.h,
                child: Text(
                  container1ItemModelObj.jamesadam!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
