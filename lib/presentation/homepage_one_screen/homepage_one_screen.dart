import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../homepage_page/homepage_page.dart';
import 'models/container1_item_model.dart';
import 'models/listsongtitle_item_model.dart';
import 'models/playlist_item_model.dart';
import 'notifier/homepage_one_notifier.dart';
import 'widgets/container1_item_widget.dart';
import 'widgets/listsongtitle_item_widget.dart';
import 'widgets/playlist_item_widget.dart';

class HomepageOneScreen extends ConsumerStatefulWidget {
  const HomepageOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomepageOneScreenState createState() => HomepageOneScreenState();
}
// ignore_for_file: must_be_immutable

class HomepageOneScreenState extends ConsumerState<HomepageOneScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildColumnMadeForYou(context),
              SizedBox(height: 27.v),
              _buildColumnPopularSinger3(context),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildColumnPopularSinger(
                  context,
                  singerName: "lbl_favorite_song".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 8.v),
              _buildStackSongTitle(context)
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "msg_good_morning_siroj".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVuesaxBoldNotification,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 21.v,
            right: 17.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLock,
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
  Widget _buildColumnMadeForYou(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildColumnPopularSinger(
            context,
            singerName: "lbl_made_for_you".tr,
            seeAllText: "lbl_see_all".tr,
          ),
        ),
        SizedBox(height: 8.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 180.v,
            child: Consumer(
              builder: (context, ref, _) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8.h,
                    );
                  },
                  itemCount: ref
                          .watch(homepageOneNotifier)
                          .homepageOneModelObj
                          ?.playlistItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    PlaylistItemModel model = ref
                            .watch(homepageOneNotifier)
                            .homepageOneModelObj
                            ?.playlistItemList[index] ??
                        PlaylistItemModel();
                    return PlaylistItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnPopularSinger3(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildColumnPopularSinger(
            context,
            singerName: "lbl_popular_singer".tr,
            seeAllText: "lbl_see_all".tr,
          ),
        ),
        SizedBox(height: 8.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 112.v,
            child: Consumer(
              builder: (context, ref, _) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8.h,
                    );
                  },
                  itemCount: ref
                          .watch(homepageOneNotifier)
                          .homepageOneModelObj
                          ?.container1ItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    Container1ItemModel model = ref
                            .watch(homepageOneNotifier)
                            .homepageOneModelObj
                            ?.container1ItemList[index] ??
                        Container1ItemModel();
                    return Container1ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnSpacer(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 23.v),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.gradientWhiteAToWhiteA,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle548x48,
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_hidup_seperti_ini".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          Text(
                            "lbl_james_adam".tr,
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 14.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 12.v,
                        bottom: 12.v,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                        child: SliderTheme(
                          data: SliderThemeData(
                            trackShape: RoundedRectSliderTrackShape(),
                            activeTrackColor: appTheme.blueGray500,
                            inactiveTrackColor: appTheme.blueGray5002,
                            thumbColor: appTheme.whiteA700,
                            thumbShape: RoundSliderThumbShape(),
                          ),
                          child: Slider(
                            value: 79.09,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "lbl_1_40".tr,
                        style: CustomTextStyles.bodySmallGray50001,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackSongTitle(BuildContext context) {
    return SizedBox(
      height: 163.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 163.v,
              child: Consumer(
                builder: (context, ref, _) {
                  return ListView.separated(
                    padding: EdgeInsets.only(left: 20.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 8.h,
                      );
                    },
                    itemCount: ref
                            .watch(homepageOneNotifier)
                            .homepageOneModelObj
                            ?.listsongtitleItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      ListsongtitleItemModel model = ref
                              .watch(homepageOneNotifier)
                              .homepageOneModelObj
                              ?.listsongtitleItemList[index] ??
                          ListsongtitleItemModel();
                      return ListsongtitleItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          _buildColumnSpacer(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildColumnPopularSinger(
    BuildContext context, {
    required String singerName,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          singerName,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 8.v,
          ),
          child: Text(
            seeAllText,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.blueGray500,
            ),
          ),
        )
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Discover:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Liked:
        return "/";
      case BottomBarEnum.Playlists:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      default:
        return DefaultWidget();
    }
  }
}
