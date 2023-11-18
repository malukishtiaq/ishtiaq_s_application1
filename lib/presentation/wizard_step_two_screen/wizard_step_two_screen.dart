import 'controller/wizard_step_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ishtiaq_s_application1/core/app_export.dart';
import 'package:ishtiaq_s_application1/widgets/custom_outlined_button.dart';

class WizardStepTwoScreen extends GetWidget<WizardStepTwoController> {
  const WizardStepTwoScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 8.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgShape1,
                              height: 110.v,
                              width: 153.h),
                          SizedBox(height: 36.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgCheckCircleFi,
                                    height: 34.adaptSize,
                                    width: 34.adaptSize,
                                    onTap: () {
                                      onTapImgImage();
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 19.v, bottom: 14.v),
                                    child: SizedBox(
                                        width: 60.h,
                                        child: Divider(indent: 8.h))),
                                Container(
                                    width: 30.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 7.h, top: 2.v, bottom: 2.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 4.v),
                                    decoration: AppDecoration
                                        .fillSecondaryContainer
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                    child: Text("lbl_2".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 19.v, bottom: 14.v),
                                    child: SizedBox(
                                        width: 60.h,
                                        child: Divider(
                                            color: theme.colorScheme.onPrimary,
                                            indent: 8.h))),
                                CustomOutlinedButton(
                                    width: 30.h,
                                    text: "lbl_3".tr,
                                    margin: EdgeInsets.only(
                                        left: 7.h, top: 2.v, bottom: 2.v),
                                    onPressed: () {
                                      onTapThree();
                                    })
                              ]),
                          SizedBox(height: 6.v),
                          Padding(
                              padding: EdgeInsets.only(left: 42.h, right: 33.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("lbl_photo".tr,
                                        style: theme.textTheme.bodyLarge),
                                    Spacer(flex: 55),
                                    Text("lbl_video".tr,
                                        style: theme.textTheme.bodyLarge),
                                    Spacer(flex: 44),
                                    Text("lbl_connect".tr,
                                        style: theme.textTheme.bodyLarge)
                                  ])),
                          SizedBox(height: 19.v),
                          Container(
                              width: 233.h,
                              margin: EdgeInsets.only(left: 45.h, right: 47.h),
                              child: Text("msg_your_video_profile".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 13.v),
                          SizedBox(width: 78.h, child: Divider()),
                          SizedBox(height: 15.v),
                          SizedBox(
                              width: 196.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_let_s_create_your".tr,
                                        style: CustomTextStyles
                                            .headlineSmallSecondaryContainer),
                                    TextSpan(
                                        text: "lbl_video_profile".tr,
                                        style: theme.textTheme.headlineSmall)
                                  ]),
                                  textAlign: TextAlign.center)),
                          SizedBox(height: 12.v),
                          _buildTwo(),
                          SizedBox(height: 28.v),
                          SizedBox(
                              height: 18.v,
                              width: 175.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("msg_record_your_video".tr,
                                        style: theme.textTheme.bodyMedium)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("msg_record_your_video".tr,
                                        style: theme.textTheme.bodyMedium))
                              ])),
                          SizedBox(height: 45.v),
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

  /// Section Widget
  Widget _buildTwo() {
    return SizedBox(
        height: 172.v,
        width: 326.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle7,
              height: 172.v,
              width: 326.h,
              radius: BorderRadius.circular(15.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 141.h, vertical: 64.v),
                  decoration: AppDecoration.fillBlack
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 43.adaptSize,
                      width: 43.adaptSize)))
        ]));
  }

  /// Navigates to the wizardStepOneScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.wizardStepOneScreen,
    );
  }

  /// Navigates to the wizardStepThreeScreen when the action is triggered.
  onTapThree() {
    Get.toNamed(
      AppRoutes.wizardStepThreeScreen,
    );
  }

  /// Navigates to the wizardStepThreeScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.wizardStepThreeScreen,
    );
  }
}
