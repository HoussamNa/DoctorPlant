import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_elevated_button.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_text_form_field.dart';

import '../../Home/main_plant_page.dart';
import '../detail_plant_screen/detail_plant_screen.dart';
import '../home_tab_container_screen/home_tab_container_screen.dart';
import '../register_screen/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 508.h,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 1101.v,
                width: 508.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 926.v,
                        width: 428.h,
                        margin: EdgeInsets.only(bottom: 39.v),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 72.h,
                          vertical: 144.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup5,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 88.v),
                            Text(
                              "Se Connecter",
                              style: CustomTextStyles.headlineLargeGreenA700,
                            ),
                            SizedBox(height: 25.v),
                            Text(
                              "Bienvenue",
                              style: CustomTextStyles.titleLargeErrorContainer,
                            ),
                            SizedBox(height: 104.v),
                            _buildEmail(context),
                            SizedBox(height: 29.v),
                            _buildPassword(context),
                            SizedBox(height: 30.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 7.h),
                                child: Text(
                                  "Mot de passe oublier ?",
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ),
                            SizedBox(height: 29.v),
                            _buildSignIn(context),
                            SizedBox(height: 30.v),
                            _buildCreateNewAccount(context),
                            SizedBox(height: 64.v),
                            Text(
                              "Se connecter avec",
                              style: theme.textTheme.titleSmall,
                            ),
                            SizedBox(height: 20.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 44.v,
                                  width: 60.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 18.h,
                                    vertical: 10.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPhGoogleLogoBold,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Container(
                                  height: 44.v,
                                  width: 60.h,
                                  margin: EdgeInsets.only(left: 10.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 18.h,
                                    vertical: 10.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgIcSharpFacebook,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Container(
                                  height: 44.v,
                                  width: 60.h,
                                  margin: EdgeInsets.only(left: 10.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 18.h,
                                    vertical: 10.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgIcBaselineApple,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Mot de passe",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray100,
      ),
    );
  }


  /// Section Widget
  /// Section Widget
Widget _buildCreateNewAccount(BuildContext context) {
  return CustomElevatedButton(
    height: 41.v,
    text: "Créer un nouveau compte",
    margin: EdgeInsets.only(right: 7.h),
    buttonStyle: CustomButtonStyles.fillWhiteA,
    buttonTextStyle: CustomTextStyles.titleSmallGray800,
    onPressed: () {
      // Navigate to the RegisterScreen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        ),
      );
    },
  );
}
/// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign in",
      margin: EdgeInsets.only(right: 7.h),
      onPressed: () {
        // Navigate to the HomeTabContainerScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainPlantPage(),
          ),
        );
      },
    );
  }
}
