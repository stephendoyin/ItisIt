import '../base_language.dart';

class EnglishLanguage extends BaseLanguage {
  OnboardPageLanguage onboardPage = OnboardPageLanguageEnglish();
  String codeName() => "en";
  String currentDate() => "Current Date";
}

class OnboardPageLanguageEnglish extends OnboardPageLanguage {
  String get getStarted => 'Get Started';
  String get signIn => 'Sign In';
  String get alreadyHaveAnAccount => 'Already have an account?';
  String get onboardingMessage1 =>
      'Send and receive payments to\nfriends and family quickly.';
  String get onboardingMessage2 =>
      'String Quickly checkout at hundreds of\nmerchants throughout The Bahamas\nwith a single tap.';
  String get onboardingMessage3 =>
      "When you spend you save. Our merchants offer exclusive deals daily. Take advantage and save.";
  String get onboardingMessage4 =>
      "Out of the banks and in your hands.\nNo bank account or credit card required.\nLow to no transaction fees.";
}
