import 'package:ishtiaq_s_application1/core/app_export.dart';
import 'package:ishtiaq_s_application1/presentation/wizard_step_one_screen/models/wizard_step_one_model.dart';

/// A controller class for the WizardStepOneScreen.
///
/// This class manages the state of the WizardStepOneScreen, including the
/// current wizardStepOneModelObj
class WizardStepOneController extends GetxController {
  Rx<WizardStepOneModel> wizardStepOneModelObj = WizardStepOneModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.wizardStepTwoScreen,
      );
    });
  }
}
