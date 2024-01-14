import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_elevated_button.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

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
                        margin: EdgeInsets.only(bottom: 34.v),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 70.h,
                          vertical: 139.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup9,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 121.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Créer Un Compte",
                                style: theme.textTheme.headlineLarge,
                              ),
                            ),
                            SizedBox(height: 78.v),
                            _buildEmail(context),
                            SizedBox(height: 26.v),
                            _buildPassword(context),
                            SizedBox(height: 26.v),
                            _buildConfirmPassword(context),
                            SizedBox(height: 53.v),
                            _buildCrer(context),
                            SizedBox(height: 30.v),
                            _buildAlreadyHaveAccount(context),
                            SizedBox(height: 64.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Se Connecter avec",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            SizedBox(height: 20.v),
                            Align(
                              alignment: Alignment.center,
                              child: Row(
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
                                      imagePath:
                                          ImageConstant.imgIcSharpFacebook,
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
                                      imagePath:
                                          ImageConstant.imgIcBaselineApple,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ],
                              ),
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
      padding: EdgeInsets.only(right: 11.h),
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
      padding: EdgeInsets.only(right: 11.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Mot de passe",
        borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: CustomTextFormField(
        controller: confirmPasswordController,
        hintText: "Confirmer le mot de passe",
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
      ),
    );
  }

  /// Section Widget
  Widget _buildCrer(BuildContext context) {
    return CustomElevatedButton(
      text: "Créer",
      margin: EdgeInsets.only(right: 11.h),
    );
  }

  /// Section Widget
  Widget _buildAlreadyHaveAccount(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate back to the LoginScreen
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.only(right: 11.h),
        padding: EdgeInsets.symmetric(
          horizontal: 79.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Text(
              "Vous avez déjà un compte ?",
              style: CustomTextStyles.titleSmallGray800,
            ),
          ],
        ),
      ),
    );
  }
}
