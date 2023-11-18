import 'controller/wizard_step_one_controller.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:ishtiaq_s_application1/core/app_export.dart';
import 'package:ishtiaq_s_application1/widgets/custom_outlined_button.dart';

class WizardStepOneScreen extends GetWidget<WizardStepOneController> {
  const WizardStepOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgWizardStepOne),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 8.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgShape1,
                              height: 110.v,
                              width: 153.h),
                          SizedBox(height: 38.v),
                          AnotherStepper(
                              iconHeight: 30,
                              iconWidth: 30,
                              stepperDirection: Axis.horizontal,
                              activeIndex: 0,
                              barThickness: 1,
                              activeBarColor:
                                  theme.colorScheme.secondaryContainer,
                              inActiveBarColor: theme.colorScheme.onPrimary,
                              inverted: true,
                              stepperList: [
                                StepperData(
                                    iconWidget: Container(
                                        width: 30.adaptSize,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.h, vertical: 4.v),
                                        decoration: AppDecoration
                                            .fillSecondaryContainer
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder15),
                                        child: Text("lbl_1".tr,
                                            style: theme.textTheme.bodyLarge)),
                                    title: StepperText("lbl_photo".tr,
                                        textStyle: theme.textTheme.bodyLarge)),
                                StepperData(
                                    iconWidget: CustomOutlinedButton(
                                        width: 30.h, text: "lbl_2".tr),
                                    title: StepperText("lbl_video".tr,
                                        textStyle: theme.textTheme.bodyLarge)),
                                StepperData(
                                    iconWidget: CustomOutlinedButton(
                                        width: 30.h, text: "lbl_3".tr),
                                    title: StepperText("lbl_connect".tr,
                                        textStyle: theme.textTheme.bodyLarge))
                              ]),
                          SizedBox(height: 67.v),
                          SizedBox(width: 78.h, child: Divider()),
                          SizedBox(height: 15.v),
                          SizedBox(
                              width: 172.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_let_s_take_your".tr,
                                        style: CustomTextStyles
                                            .headlineSmallSecondaryContainer),
                                    TextSpan(
                                        text: "lbl_profile_picture".tr,
                                        style: theme.textTheme.headlineSmall)
                                  ]),
                                  textAlign: TextAlign.center)),
                          SizedBox(height: 12.v),
                          Container(
                              height: 172.v,
                              width: 160.h,
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder15),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgBusinessYoung,
                                  height: 172.v,
                                  width: 160.h,
                                  radius: BorderRadius.circular(15.h),
                                  alignment: Alignment.center)),
                          SizedBox(height: 27.v),
                          SizedBox(
                              width: 136.h,
                              child: Text("msg_or_upload_a_picture_from".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 27.v),
                          CustomOutlinedButton(
                              height: 48.v,
                              text: "lbl_next".tr,
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle: theme.textTheme.labelLarge!,
                              onPressed: () {
                                onTapNext();
                              })
                        ])))));
  }

  /// Navigates to the wizardStepTwoScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.wizardStepTwoScreen,
    );
  }
}
