import '../controller/wizard_step_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WizardStepThreeScreen.
///
/// This class ensures that the WizardStepThreeController is created when the
/// WizardStepThreeScreen is first loaded.
class WizardStepThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WizardStepThreeController());
  }
}
