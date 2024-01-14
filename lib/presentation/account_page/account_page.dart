import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AccountPage extends StatelessWidget {
  const AccountPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 508.h,
          decoration: AppDecoration.outlineGreenC,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTopHeaderBar(context),
                SizedBox(height: 10.v),
                _buildFortyFour(context),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBoldSecurity,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Compte",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "Notifications de sécurité, changer de numéro",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 51.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBoldSecurityBlueGray400,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Confidentialité",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "Block contacts, disappearing messages",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 52.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBoldUsersUser,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Avatar",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "Créer, éditer, photo de profil",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 51.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBoldMessages,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chats",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "Theme, wallpapers, chat history",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 51.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBoldNotifications,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Notifications",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "Message, group & call tones",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 52.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBoldBusiness,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stockage et Données",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "Network usage, auto-download",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 52.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLineDuotoneMap,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Langue de l'application",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "English (phone’s language)",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 51.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLineDuotoneEssentional,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Aide",
                              style: theme.textTheme.labelLarge,
                            ),
                            Text(
                              "Help centre, contact us, privacy policy",
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 55.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBoldUsersUsers,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                        margin: EdgeInsets.only(bottom: 6.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 14.v,
                        ),
                        child: Text(
                          "Inviter un ami",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.v),
                _buildTwentyTwo(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopHeaderBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 1.v,
            ),
            child: Text(
              "Settings",
              style: CustomTextStyles.titleMediumOverpassWhiteA70001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return SizedBox(
      height: 181.v,
      width: 508.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 71.v),
              padding: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 13.v),
              decoration: AppDecoration.outlineGray,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 156.h,
                    margin: EdgeInsets.only(bottom: 10.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse72x70,
                          height: 72.v,
                          width: 70.h,
                          radius: BorderRadius.circular(
                            36.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.v,
                            bottom: 25.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "John",
                                style: CustomTextStyles
                                    .titleMediumOverpassGray900e5,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "John Doe",
                                style: CustomTextStyles
                                    .titleSmallOverpassGray900e5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGrid,
                    height: 48.v,
                    width: 53.h,
                    margin: EdgeInsets.only(
                      top: 4.v,
                      right: 36.h,
                      bottom: 29.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame11,
            height: 81.v,
            width: 508.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 57.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGreen400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(right: 11.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.lightGreen400,
                    appTheme.lightGreen900,
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img2Home11,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
                Spacer(
                  flex: 21,
                ),
                CustomImageView(
                  imagePath: ImageConstant.img42Explore,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
                Spacer(
                  flex: 57,
                ),
                CustomImageView(
                  imagePath: ImageConstant.img5Chart1,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
                Spacer(
                  flex: 21,
                ),
                CustomImageView(
                  imagePath: ImageConstant.img11ProfilePrimary,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 77.v),
        ],
      ),
    );
  }
}
