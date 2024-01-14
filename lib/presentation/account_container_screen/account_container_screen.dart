import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/core/app_export.dart';
import 'package:nasir_s_doctorplant_app/presentation/account_page/account_page.dart';
import 'package:nasir_s_doctorplant_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AccountContainerScreen extends StatelessWidget {
  AccountContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.accountPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 57.h, right: 51.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.home11:
        return AppRoutes.accountPage;
      case BottomBarEnum.explore:
        return "/";
      case BottomBarEnum.chart1:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.accountPage:
        return AccountPage();
      default:
        return DefaultWidget();
    }
  }
}
