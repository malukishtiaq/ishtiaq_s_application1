import 'package:ishtiaq_s_application1/core/app_export.dart';
import 'package:ishtiaq_s_application1/presentation/wizard_step_three_screen/models/wizard_step_three_model.dart';

/// A controller class for the WizardStepThreeScreen.
///
/// This class manages the state of the WizardStepThreeScreen, including the
/// current wizardStepThreeModelObj
class WizardStepThreeController extends GetxController {
  Rx<WizardStepThreeModel> wizardStepThreeModelObj = WizardStepThreeModel().obs;
}
