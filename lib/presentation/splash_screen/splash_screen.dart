import 'package:flutter/material.dart';
import 'package:helthio_app/core/app_export.dart';

import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState())..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgVector,
                            height: getVerticalSize(130),
                            width: getHorizontalSize(117)),
                        Padding(
                            padding: getPadding(top: 15, bottom: 5),
                            child: Text("lbl_helthio".tr,
                                style: theme.textTheme.displayMedium))
                      ]))));
    });
  }
}
