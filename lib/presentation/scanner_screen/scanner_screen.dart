import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_icon_button.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: SizedBox(
          width: 511.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 87.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 841.v,
                        width: 511.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                height: 728.v,
                                width: 511.h,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage1,
                                      height: 728.v,
                                      width: 511.h,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgScanner,
                                      height: 426.v,
                                      width: 458.h,
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 83.v),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _buildRecentOrders(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 36.v),
                      _buildUserProfile(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 25.h,
          top: 615.v,
          right: 25.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.gradientGrayFToBlueGrayF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgHouseplantPepe,
              height: 201.v,
              width: 147.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 29.v,
                bottom: 12.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 55.h),
                    child: Text(
                      "Aloe Vera",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    height: 120.v,
                    width: 248.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 247.h,
                            child: Text(
                              "L'Aloe Vera, prisé pour son gel apaisant, soulage les coups de soleil et les problèmes cutanés. Sa culture facile et ses bienfaits internes pour la santé le rendent populaire dans les soins de la peau et les remèdes naturels.",
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumGray400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 7.v),
                          child: CustomIconButton(
                            height: 36.v,
                            width: 38.h,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper
                                .gradientLightGreenToLightGreen,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                              imagePath: ImageConstant.img35ArrowRight2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 188.v,
      width: 511.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 27.v),
              padding: EdgeInsets.symmetric(
                horizontal: 58.h,
                vertical: 34.v,
              ),
              decoration: AppDecoration.outlineGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img2Home11,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(bottom: 60.v),
                  ),
                  Spacer(
                    flex: 21,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img42Explore,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(bottom: 60.v),
                  ),
                  Spacer(
                    flex: 27,
                  ),
                  Container(
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 40.v),
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
                  Spacer(
                    flex: 29,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img5Chart1,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(bottom: 60.v),
                  ),
                  Spacer(
                    flex: 22,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img11Profile,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(bottom: 60.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 83.adaptSize,
              width: 83.adaptSize,
              padding: EdgeInsets.all(17.h),
              decoration:
                  AppDecoration.gradientLightGreenAToLightGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder41,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.img21San,
                height: 47.adaptSize,
                width: 47.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
