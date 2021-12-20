import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:pps/modules/base_widget.dart';
import 'package:pps/modules/constant/const.dart';
import 'package:pps/modules/constant/style.dart';
import 'package:pps/modules/sizing_information.dart';
import 'package:pps/routes/app_routes.dart';
import 'package:pps/shared/constants/colors.dart';
import '../controller/login_logic.dart';

class LoginScreen extends GetView<LoginLogic> {
  @override
  Widget build(BuildContext context) {
    Get.put<LoginLogic>(LoginLogic());

    return BaseWidget(builder: (context, sizingInformation) {
      return SafeArea(
        child: Scaffold(

            backgroundColor: ColorConstants.backgroundPrimaryColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                  child: Center(
                    child: Image(
                      height: 97,
                      width: 82,
                      image: AssetImage(
                        "assets/images/logo.png",
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                      child: customTextField
                        (
                        key: controller.emailFormKey,
                        labelText: 'Email address',
                        obscureValue: false,
                        text_controller: controller.email,
                        onChangedX: (value) {
                          controller.isSubmitButtonEnabled.value = controller.isLoginFormValid();
                          controller.emailFormKey.currentState!.validate();
                        },
                        validatorX: (value) {
                          if (value.isEmpty) {
                            return "*Email is empty";
                          }
                          if (!value.contains('@')) {
                            return "*wrong email address";
                          }
                          if (!value.contains('.')) {
                            return "*wrong email address";
                          }
                          if (controller.validation.value == true) {
                            controller.validation.value =
                                !controller.validation.value;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: sectionSpacing * 2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: rootContainerSpacing),
                      child: customTextField(
                        key: controller.passwordFormKey,
                        text_controller: controller.password,
                        labelText: 'Password',
                        obscureValue: true,
                        onChangedX: (value) {
                          controller.isSubmitButtonEnabled.value = controller.isLoginFormValid();
                          controller.passwordFormKey.currentState!.validate();
                        },
                        validatorX: (value) {
                          if (value.isEmpty) {
                            return '*Password is empty';
                          } else if (value.length < 5) {
                            return '*Password must be more then 8 character';
                          }
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: sectionSpacing * 3,
                      left: rootContainerSpacing,
                      right: rootContainerSpacing,
                      top: rootContainerSpacing),
                  child: InkWell(
                    onTap: ()
                    {
                      if (controller.isSubmitButtonEnabled.isTrue)
                        controller.submit();
                      else
                        controller.loginsnackbar();
                     // Get.offNamed(Routes.Drawer);


                    },
                    child: Container(
                      height: buttonHeight,
                      decoration: BoxDecoration(
                        color: ColorConstants.buttonPrimaryColor,
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: sectionSubTitle().copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: AdaptiveTextSize().getadaptiveTextSize(
                                Get.context, 14, Get.height),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: sectionSpacing,
                ),
                Center(
                  child: Text(
                    'Powered By : Bit-Byte Tech',
                    textAlign: TextAlign.center,
                    style: sectionSubTitle().copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: AdaptiveTextSize()
                            .getadaptiveTextSize(Get.context, 12, Get.height)),
                  ),
                )
              ],
            )),
      );
    });
  }

  Widget customTextField(
      {required String labelText,
      bool? obscureValue,
      Key? key,
      TextEditingController? text_controller,
      Function? onChangedX,
      Function? validatorX}) {
    return TextFormField(
      key: key,
      controller: text_controller,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
            borderSide:
                BorderSide(color: ColorConstants.textFieldUnderlineColor)),
        labelText: labelText,
        labelStyle: TextStyle(color: ColorConstants.textFieldUnderlineColor),
        suffixIcon: obscureValue != null
            ? obscureValue
                ? IconButton(
                    icon: !controller.obscureStatus.isTrue
                        ? Icon(FeatherIcons.eyeOff)
                        : Icon(FeatherIcons.eye),
                    onPressed: () {
                      if (controller.obscureStatus.isTrue) {
                        controller.obscureStatus.value = false;
                      } else {
                        controller.obscureStatus.value = true;
                      }
                    },
                  )
                : SizedBox()
            : SizedBox(),
      ),
      textInputAction: TextInputAction.done,
      obscureText: obscureValue! ? !controller.obscureStatus.value : false,
      onChanged: (value) => onChangedX!(value),
      validator: (value) => validatorX!(value),
    );
  }
}
