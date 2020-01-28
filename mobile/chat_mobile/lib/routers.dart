import 'package:flutter/widgets.dart';
import 'core/routes/navigation.dart';
import 'features/authenticate/presentation/widgets/authentication_page.dart';
import 'features/splash_screen/splash_screen_page.dart';

Widget pushSplashPage() => SplashScreenPage();

pushAuthenticationPage(BuildContext context) {
  final AuthenticationPage authenticationPage = AuthenticationPage();
  push(context, authenticationPage);
}
