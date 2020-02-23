import 'package:chat_mobile/features/onboarding/onboarding_page.dart';
import 'package:chat_mobile/features/registry/presentation/register_page.dart';
import 'package:flutter/widgets.dart';
import 'core/routes/navigation.dart';
import 'features/authenticate/presentation/widgets/authentication_page.dart';
import 'features/splash_screen/splash_screen_page.dart';

// Widget pushSplashPage() => SplashScreenPage();

Widget pushSplashPage(BuildContext context) {
  final SplashScreenPage splashScreenPage = SplashScreenPage();
  // push(context, splashScreenPage, isFullScreen: true);
  return splashScreenPage;
}

pushToOnboardingPage(BuildContext context) {
  final OnboardingPage onboardingPage = OnboardingPage();
  pushAndReplace(context, onboardingPage);
}

pushAuthenticationPage(BuildContext context) {
  final AuthenticationPage authenticationPage = AuthenticationPage();
  pushAndReplace(context, authenticationPage);
}

pushToRegisterPage(BuildContext context) {
  final RegisterPage registerPage = RegisterPage();
  push(context, registerPage);
}
