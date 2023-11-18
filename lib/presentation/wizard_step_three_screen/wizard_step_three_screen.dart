import 'controller/wizard_step_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:ishtiaq_s_application1/core/app_export.dart';

class WizardStepThreeScreen extends GetWidget<WizardStepThreeController> {
  const WizardStepThreeScreen({Key? key}) : super(key: key);

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
                    padding:
                        EdgeInsets.only(left: 57.h, top: 71.v, right: 57.h),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgShape1,
                          height: 110.v,
                          width: 153.h),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h, right: 19.h),
                          child: Row(
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
                                CustomImageView(
                                    imagePath: ImageConstant.imgCheckCircleFi,
                                    height: 34.adaptSize,
                                    width: 34.adaptSize,
                                    margin: EdgeInsets.only(left: 5.h),
                                    onTap: () {
                                      onTapImgImage1();
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 19.v, bottom: 14.v),
                                    child: SizedBox(
                                        width: 58.h,
                                        child: Divider(indent: 6.h))),
                                Container(
                                    width: 30.adaptSize,
                                    margin: EdgeInsets.only(left: 7.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 4.v),
                                    decoration: AppDecoration
                                        .fillSecondaryContainer
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                    child: Text("lbl_3".tr,
                                        style: theme.textTheme.bodyLarge))
                              ])),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
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
                      SizedBox(height: 67.v),
                      SizedBox(width: 78.h, child: Divider()),
                      SizedBox(height: 15.v),
                      Container(
                          width: 231.h,
                          margin: EdgeInsets.only(left: 14.h, right: 15.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_let_s_pick_someone".tr,
                                    style: CustomTextStyles
                                        .headlineSmallSecondaryContainer),
                                TextSpan(
                                    text: "lbl_to_connect_with".tr,
                                    style: theme.textTheme.headlineSmall)
                              ]),
                              textAlign: TextAlign.center)),
                      SizedBox(height: 42.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 110.adaptSize,
                                    width: 110.adaptSize,
                                    padding: EdgeInsets.all(2.h),
                                    decoration: AppDecoration
                                        .fillSecondaryContainer
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder55),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse8,
                                        height: 106.v,
                                        width: 105.h,
                                        radius: BorderRadius.circular(53.h),
                                        alignment: Alignment.center)),
                                Container(
                                    height: 110.adaptSize,
                                    width: 110.adaptSize,
                                    margin: EdgeInsets.only(left: 7.h),
                                    padding: EdgeInsets.all(2.h),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder55),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEllipse5,
                                        height: 106.v,
                                        width: 105.h,
                                        radius: BorderRadius.circular(53.h),
                                        alignment: Alignment.center))
                              ])),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 45.h, right: 57.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_women".tr,
                                        style: theme.textTheme.labelLarge),
                                    Text("lbl_men".tr,
                                        style: theme.textTheme.labelLarge)
                                  ]))),
                      SizedBox(height: 37.v),
                      Container(
                          width: 231.h,
                          margin: EdgeInsets.only(left: 14.h, right: 13.h),
                          child: Text("msg_use_your_video_profile".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the wizardStepOneScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.wizardStepOneScreen,
    );
  }

  /// Navigates to the wizardStepTwoScreen when the action is triggered.
  onTapImgImage1() {
    Get.toNamed(
      AppRoutes.wizardStepTwoScreen,
    );
  }
}
