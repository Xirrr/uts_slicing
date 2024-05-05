import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'models/container_item_model.dart';
import 'models/playlistlist_item_model.dart';
import 'models/songlist_item_model.dart';
import 'notifier/homepage_notifier.dart';
import 'widgets/container_item_widget.dart';
import 'widgets/playlistlist_item_widget.dart';
import 'widgets/songlist_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomepagePage extends ConsumerStatefulWidget {
  const HomepagePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepagePageState createState() => HomepagePageState();
}

class HomepagePageState extends ConsumerState<HomepagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 23.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildPopularSingerList(
                    context,
                    singerName: "lbl_made_for_you".tr,
                    seeAllText: "lbl_see_all".tr,
                  ),
                ),
                SizedBox(height: 8.v),
                _buildPlaylistList(context),
                SizedBox(height: 27.v),
                _buildColumnpopularsi(context),
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildPopularSingerList(
                    context,
                    singerName: "lbl_favorite_song".tr,
                    seeAllText: "lbl_see_all".tr,
                  ),
                ),
                SizedBox(height: 8.v),
                _buildSongList(context),
                SizedBox(height: 20.v),
                _buildSpacerColumn(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "msg_goor_morning_desta".tr,
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
  Widget _buildPlaylistList(BuildContext context) {
    return SizedBox(
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
                    .watch(homepageNotifier)
                    .homepageModelObj
                    ?.playlistlistItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              PlaylistlistItemModel model = ref
                      .watch(homepageNotifier)
                      .homepageModelObj
                      ?.playlistlistItemList[index] ??
                  PlaylistlistItemModel();
              return PlaylistlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnpopularsi(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildPopularSingerList(
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
                          .watch(homepageNotifier)
                          .homepageModelObj
                          ?.containerItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    ContainerItemModel model = ref
                            .watch(homepageNotifier)
                            .homepageModelObj
                            ?.containerItemList[index] ??
                        ContainerItemModel();
                    return ContainerItemWidget(
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
  Widget _buildSongList(BuildContext context) {
    return SizedBox(
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
                    .watch(homepageNotifier)
                    .homepageModelObj
                    ?.songlistItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              SonglistItemModel model = ref
                      .watch(homepageNotifier)
                      .homepageModelObj
                      ?.songlistItemList[index] ??
                  SonglistItemModel();
              return SonglistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacerColumn(BuildContext context) {
    return Container(
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
                  SizedBox(
                    width: 165.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        top: 4.v,
                        bottom: 3.v,
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
    );
  }

  /// Common widget
  Widget _buildPopularSingerList(
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
}
