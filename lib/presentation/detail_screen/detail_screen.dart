import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class DetailScreen extends ConsumerStatefulWidget {
  const DetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends ConsumerState<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgDetail,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Column(
              children: [Spacer(), _buildColumnSpacer(context)],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 21.v,
          bottom: 17.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: AppbarTitle(
        text: "lbl_indonesian_pops".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFavorite,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 21.v,
            right: 17.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 21.v,
            right: 37.h,
          ),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildColumnSpacer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_hidup_seperti_ini".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  Text(
                    "lbl_james_adam".tr,
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgTwitter,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 15.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVuesaxBoldMusicFilter,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 15.v,
                  bottom: 15.v,
                ),
              )
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SliderTheme(
                        data: SliderThemeData(
                          trackShape: RoundedRectSliderTrackShape(),
                          activeTrackColor: appTheme.whiteA700,
                          inactiveTrackColor:
                              appTheme.whiteA700.withOpacity(0.3),
                          thumbColor: appTheme.whiteA700,
                          thumbShape: RoundSliderThumbShape(),
                        ),
                        child: Slider(
                          value: 72.47,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.only(right: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUserWhiteA700,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 14.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserWhiteA70032x32,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 14.v),
                            ),
                            CustomIconButton(
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              padding: EdgeInsets.all(16.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSettings,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserWhiteA70032x32,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 14.v),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 28.v),
                      CustomElevatedButton(
                        width: 100.h,
                        text: "lbl_open_lirics".tr,
                        margin: EdgeInsets.only(right: 69.h),
                        alignment: Alignment.centerRight,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  bottom: 72.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "lbl_1_40".tr,
                        style: CustomTextStyles.bodySmallWhiteA700,
                      ),
                    ),
                    SizedBox(height: 41.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgUser32x32,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.center,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 5.v)
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
