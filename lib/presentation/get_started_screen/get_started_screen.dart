import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_elevated_button.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../login_screen/login_screen.dart';
import '../register_screen/register_screen.dart';

class GetStartedScreen extends StatelessWidget {
  GetStartedScreen({Key? key})
      : super(
            key: key,
          );

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screen = MediaQuery.of(context).size;

    final screenHeight = screen.height;
    final screenWidth = screen.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: screenWidth,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: screenHeight * 0.723,
                    width: screenWidth * 0.888, // Adjust the width percentage as needed
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img35ArrowRight2,
                          height: screenHeight * 0.023,
                          width: screenHeight * 0.023,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: screenWidth * 0.1,
                            bottom: screenHeight * 0.1,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: screenHeight * 0.723,
                            width: screenWidth * 0.888, // Adjust the width percentage as needed
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse2,
                                  height: screenHeight * 0.492,
                                  width: screenWidth * 0.811,
                                  alignment: Alignment.topRight,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse1,
                                  height: screenHeight * 0.446,
                                  width: screenWidth * 0.632,
                                  alignment: Alignment.topRight,
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: screenWidth * 0.147),
                                    child: Text(
                                      "DoctorPlant",
                                      style: theme.textTheme.displaySmall,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgInvestingBro1,
                                  height: screenHeight * 0.401,
                                  width: screenWidth * 0.712,
                                  radius: BorderRadius.circular(
                                    screenWidth * 0.096,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: screenHeight * 0.108),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.039),
                _buildGetStartedStack(context, screenWidth, screenHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedStack(BuildContext context, double screenWidth, double screenHeight) {
    final theme = Theme.of(context);

    return SizedBox(
      height: screenHeight * 0.5,
      width: screenWidth * 0.85,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: screenHeight * 0.5,
              width: screenWidth * 0.4,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle3,
                    height: screenHeight * 0.338,
                    width: screenWidth * 0.4,
                    alignment: Alignment.topCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle4,
                    height: screenHeight * 0.372,
                    width: screenWidth * 0.228,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.153),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomElevatedButton(
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.06, // Adjust the height
                    text: "Se Connecter",
                    buttonStyle: CustomButtonStyles.outlineBlue,
                    onPressed: () {
                      // Navigate to the LoginScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: screenWidth * 0.024), // Add some spacing
                  CustomElevatedButton(
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.06, // Adjust the height
                    text: "Créer un compte",
                    onPressed: () {
                      // Navigate to the RegisterScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: screenHeight * 0.019,
              margin: EdgeInsets.only(
                top: screenHeight * 0.059,
                right: screenWidth * 0.136,
              ),
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: screenHeight * 0.011,
                  activeDotColor: appTheme.greenA10001,
                  dotColor: appTheme.green200,
                  dotHeight: screenHeight * 0.019,
                  dotWidth: screenWidth * 0.019,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
