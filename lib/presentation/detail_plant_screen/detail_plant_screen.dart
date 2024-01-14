import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_elevated_button.dart';

class DetailPlantScreen extends StatelessWidget {
  const DetailPlantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: 519.h,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 164.v),
                        padding: EdgeInsets.symmetric(horizontal: 17.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 6.h, right: 150.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            height: 11.v,
                                            width: 24.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeftWhiteA70001,
                                                      height: 11.v,
                                                      width: 24.h,
                                                      alignment:
                                                          Alignment.center,
                                                      onTap: () {
                                                        onTapImgArrowLeft(
                                                            context);
                                                      }),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeft,
                                                      height: 11.v,
                                                      width: 20.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              2.h),
                                                      alignment:
                                                          Alignment.center,
                                                      onTap: () {
                                                        onTapImgArrowLeft1(
                                                            context);
                                                      })
                                                ])),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup2,
                                            height: 9.v,
                                            width: 4.h)
                                      ])),
                              SizedBox(height: 183.v),
                              _buildDetailPlantSection(context),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 22.h),
                                  child: Text("Aloe Vera",
                                      style: CustomTextStyles
                                          .headlineLargeLexendErrorContainer)),
                              SizedBox(height: 39.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Row(children: [
                                    Text("Plantae",
                                        style: theme.textTheme.bodyMedium),
                                    Padding(
                                        padding: EdgeInsets.only(left: 60.h),
                                        child: Text("Cactaceae",
                                            style: theme.textTheme.bodyMedium))
                                  ])),
                              SizedBox(height: 22.v),
                              Text("Description",
                                  style: CustomTextStyles
                                      .titleLargeLexendErrorContainer),
                              SizedBox(height: 18.v),
                              Container(
                                  width: 458.h,
                                  margin: EdgeInsets.only(right: 27.h),
                                  child: Text(
                                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos  sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis",
                                      maxLines: 20,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumErrorContainer))
                            ]))))));
  }

  /// Section Widget
  Widget _buildDetailPlantSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 6.h, right: 20.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 203.h,
                      margin: EdgeInsets.only(top: 47.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 78.h,
                                margin: EdgeInsets.only(bottom: 2.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.h, vertical: 1.v),
                                decoration: AppDecoration.fillBlue.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4),
                                child: Text("relaxantes",
                                    style: CustomTextStyles
                                        .labelLargeLexendGray80001)),
                            CustomElevatedButton(
                                height: 23.v,
                                width: 108.h,
                                text: "digestives",
                                buttonStyle: CustomButtonStyles.fillBlue,
                                buttonTextStyle: CustomTextStyles
                                    .labelLargeLexendGray80001_1)
                          ])),
                  Spacer(flex: 43),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup35,
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                      margin: EdgeInsets.only(bottom: 46.v)),
                  Spacer(flex: 56),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup3,
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      margin: EdgeInsets.only(top: 17.v, bottom: 20.v))
                ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft1(BuildContext context) {
    Navigator.pop(context);
  }
}
