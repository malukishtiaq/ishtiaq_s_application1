import '../controller/wizard_step_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WizardStepOneScreen.
///
/// This class ensures that the WizardStepOneController is created when the
/// WizardStepOneScreen is first loaded.
class WizardStepOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WizardStepOneController());
  }
}
