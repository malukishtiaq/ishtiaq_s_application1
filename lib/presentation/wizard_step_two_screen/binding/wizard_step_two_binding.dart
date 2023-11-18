import '../controller/wizard_step_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WizardStepTwoScreen.
///
/// This class ensures that the WizardStepTwoController is created when the
/// WizardStepTwoScreen is first loaded.
class WizardStepTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WizardStepTwoController());
  }
}
