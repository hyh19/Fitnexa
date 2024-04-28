import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/create_account_screen/binding/create_account_binding.dart';
import '../presentation/create_account_screen/create_account_screen.dart';
import '../presentation/data_screen/binding/data_binding.dart';
import '../presentation/data_screen/data_screen.dart';
import '../presentation/goals_screen/binding/goals_binding.dart';
import '../presentation/goals_screen/goals_screen.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/phone_verification_screen/binding/phone_verification_binding.dart';
import '../presentation/phone_verification_screen/phone_verification_screen.dart';
import '../presentation/profile_screen/binding/profile_binding.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/region_screen/binding/region_binding.dart';
import '../presentation/region_screen/region_screen.dart';
import '../presentation/settings_screen/binding/settings_binding.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/welcome_screen/binding/welcome_binding.dart';
import '../presentation/welcome_screen/welcome_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String phoneVerificationScreen = '/phone_verification_screen';

  static const String profileScreen = '/profile_screen';

  static const String regionScreen = '/region_screen';

  static const String homeScreen = '/home_screen';

  static const String goalsScreen = '/goals_screen';

  static const String dataScreen = '/data_screen';

  static const String settingsScreen = '/settings_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [WelcomeBinding()],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [SplashBinding()],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(
      name: createAccountScreen,
      page: () => CreateAccountScreen(),
      bindings: [CreateAccountBinding()],
    ),
    GetPage(
      name: phoneVerificationScreen,
      page: () => PhoneVerificationScreen(),
      bindings: [PhoneVerificationBinding()],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [ProfileBinding()],
    ),
    GetPage(
      name: regionScreen,
      page: () => RegionScreen(),
      bindings: [RegionBinding()],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeBinding()],
    ),
    GetPage(
      name: goalsScreen,
      page: () => GoalsScreen(),
      bindings: [GoalsBinding()],
    ),
    GetPage(
      name: dataScreen,
      page: () => DataScreen(),
      bindings: [DataBinding()],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [SettingsBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [WelcomeBinding()],
    )
  ];
}
