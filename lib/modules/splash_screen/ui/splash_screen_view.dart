import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:pps/modules/splash_screen/controller/splash_screen_logic.dart';
import 'package:pps/shared/constants/colors.dart';
import 'package:pps/shared/utils/SizeConfig.dart';
import '../../base_widget.dart';

class SplashScreen extends GetView<SplashScreenController>{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put<SplashScreenController>(SplashScreenController());

    return BaseWidget(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ExtendedImage.asset(
                "assets/images/logo.png",
                height: heightPx(height: sizingInformation.localWidgetSize!.height,value: 15),
                width: widthPx(width: sizingInformation.localWidgetSize!.width,value: 15),
              ),

              SizedBox(
                height: heightPx(height: sizingInformation.localWidgetSize!.height,value: 1.5),
                width: heightPx(height: sizingInformation.localWidgetSize!.height,value: 1.5),
                child: LoadingIndicator(
                    indicatorType: Indicator.lineSpinFadeLoader,
                    colors: [ColorConstants.backgroundPrimaryColor],
                    strokeWidth: 2,
                    backgroundColor: Colors.transparent,
                    pathBackgroundColor: Colors.black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}