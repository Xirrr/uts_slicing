import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/container_item_model.dart';

class ContainerItemWidget extends StatelessWidget {
  final ContainerItemModel containerItemModelObj;
  final VoidCallback onNavigateBack; // Callback to navigate back to homepage

  const ContainerItemWidget({
    required this.containerItemModelObj,
    required this.onNavigateBack,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            // Perform any action if needed
            // For example, navigating back to homepage
            onNavigateBack();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 11.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.whiteA,
              borderRadius: BorderRadius.circular(12.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.blueGray100.withOpacity(0.5),
                  blurRadius: 6.0,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: containerItemModelObj.jamesAdamOne,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(20.h),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  width: 47.h,
                  child: Text(
                    containerItemModelObj.jamesadam,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall!.copyWith(
                      height: 1.30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
