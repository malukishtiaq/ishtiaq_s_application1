import 'package:ishtiaq_s_application1/core/app_export.dart';
import 'package:ishtiaq_s_application1/presentation/wizard_step_two_screen/models/wizard_step_two_model.dart';

/// A controller class for the WizardStepTwoScreen.
///
/// This class manages the state of the WizardStepTwoScreen, including the
/// current wizardStepTwoModelObj
class WizardStepTwoController extends GetxController {
  Rx<WizardStepTwoModel> wizardStepTwoModelObj = WizardStepTwoModel().obs;
}
