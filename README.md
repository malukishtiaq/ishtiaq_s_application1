This project is a structured Flutter application with separate directories for platform-specific requirements, resources, and Dart code. The 'android' and 'ios' folders contain platform-specific files for Android and iOS, respectively. 'assets' holds all visual resources like images and fonts. The 'lib' folder is the core of the application, where 'main.dart' is the entry point. Inside 'lib', the 'core' subdirectory includes essential utilities, constants, error handling, and networking classes, while 'data' houses the API client, data models, and repositories for network communication. Localization support is provided in its own section, and the 'presentation' subdirectory contains UI elements, controllers, and models. Navigation is managed through the 'routes' directory, and 'theme' controls the visual style. Custom reusable widgets are located in the 'widgets' folder, completing the structure for a robust, well-organized Flutter application.

### System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.

### Check the UI of the entire app

Check the UI of all the app screens from a single place by setting up the 'initialRoute'  to AppNavigation in the AppRoutes.dart file.

### Application structure

After successful build, your application structure should look like this:

```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains all constants classes
    │   ├── errors                  - It contains error handling classes                  
    │   ├── network                 - It contains network-related classes
    │   └── utils                   - It contains common files and utilities of the application
    ├── data
    │   ├── apiClient               - It contains API calling methods 
    │   ├── models                  - It contains request/response models 
    │   └── repository              - Network repository
    ├── localization                - It contains localization classes
    ├── presentation                - It contains widgets of the screens with their controllers and the models of the whole application.
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```

### How you can improve code readability?

Resolve the errors and warnings that are shown in the application.

### Libraries and tools used

- get - State management
  https://pub.dev/packages/get
- connectivity_plus - For status of network connectivity
  https://pub.dev/packages/connectivity_plus
- shared_preferences - Provide persistent storage for simple data
  https://pub.dev/packages/shared_preferences
- cached_network_image - For storing internet image into cache
  https://pub.dev/packages/cached_network_image

### Support

If you encounter any issues or have questions, feel free to reach out to me at malukishtiaq@gmail.com. I'm always available to assist you.
