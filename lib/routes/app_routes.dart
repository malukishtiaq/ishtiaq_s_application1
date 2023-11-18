import 'package:ishtiaq_s_application1/presentation/wizard_step_one_screen/wizard_step_one_screen.dart';
import 'package:ishtiaq_s_application1/presentation/wizard_step_one_screen/binding/wizard_step_one_binding.dart';
import 'package:ishtiaq_s_application1/presentation/wizard_step_two_screen/wizard_step_two_screen.dart';
import 'package:ishtiaq_s_application1/presentation/wizard_step_two_screen/binding/wizard_step_two_binding.dart';
import 'package:ishtiaq_s_application1/presentation/wizard_step_three_screen/wizard_step_three_screen.dart';
import 'package:ishtiaq_s_application1/presentation/wizard_step_three_screen/binding/wizard_step_three_binding.dart';
import 'package:ishtiaq_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ishtiaq_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String wizardStepOneScreen = '/wizard_step_one_screen';

  static const String wizardStepTwoScreen = '/wizard_step_two_screen';

  static const String wizardStepThreeScreen = '/wizard_step_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: wizardStepOneScreen,
      page: () => WizardStepOneScreen(),
      bindings: [
        WizardStepOneBinding(),
      ],
    ),
    GetPage(
      name: wizardStepTwoScreen,
      page: () => WizardStepTwoScreen(),
      bindings: [
        WizardStepTwoBinding(),
      ],
    ),
    GetPage(
      name: wizardStepThreeScreen,
      page: () => WizardStepThreeScreen(),
      bindings: [
        WizardStepThreeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WizardStepOneScreen(),
      bindings: [
        WizardStepOneBinding(),
      ],
    )
  ];
}
