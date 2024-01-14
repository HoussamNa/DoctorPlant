import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 63.v),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHouseplantCras,
                        height: 336.v,
                        width: 245.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 9.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgHouseplantPepe,
                        height: 306.v,
                        width: 223.h,
                        margin: EdgeInsets.only(left: 20.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: _buildFrameTwo(
                          context,
                          textValue: "Aloe Vera",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 26.h),
                        child: _buildFrameTwo(
                          context,
                          textValue: "Tanacetum parthenium",
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgHouseplantAspl,
                        height: 317.v,
                        width: 232.h,
                        margin: EdgeInsets.only(left: 17.h),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 309.v,
                          width: 274.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 9.v,
                                  width: 95.h,
                                  margin: EdgeInsets.only(
                                    left: 82.h,
                                    bottom: 9.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.blueGray5019,
                                    borderRadius: BorderRadius.circular(
                                      47.h,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: appTheme.gray6003f,
                                        spreadRadius: 2.h,
                                        blurRadius: 2.h,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage1309x274,
                                height: 309.v,
                                width: 274.h,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: _buildFrameTwo(
                          context,
                          textValue: "Peperomia Houseplant",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 26.h),
                        child: _buildFrameTwo(
                          context,
                          textValue: "Crassula Houseplant",
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 82.adaptSize,
                          width: 82.adaptSize,
                          padding: EdgeInsets.all(17.h),
                          decoration: AppDecoration
                              .gradientLightGreenAToLightgreen80001
                              .copyWith(
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
                      _buildSeven(context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 57.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGreen400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.only(left: 11.h),
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
          SizedBox(height: 14.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img2Home11Green5001,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
              Spacer(
                flex: 20,
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
                imagePath: ImageConstant.img11Profile,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
            ],
          ),
          SizedBox(height: 84.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameTwo(
    BuildContext context, {
    required String textValue,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 96.h,
            margin: EdgeInsets.only(top: 236.v),
            child: Text(
              textValue,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumLexendBluegray900.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.h,
              top: 236.v,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 36.v,
              width: 38.h,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(
                imagePath: ImageConstant.img35ArrowRight2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
