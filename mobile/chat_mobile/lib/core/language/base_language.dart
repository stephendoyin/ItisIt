enum LanguageCode {
  English,
  VietNam,
}

abstract class BaseLanguage {
  // Onboarding
  String filePath;

  OnboardPageLanguage onboardPage;
  String codeName() => "s";
  String currentDate() => "Date";
}

abstract class OnboardPageLanguage {
  String get getStarted => 'Get Started';
  String get signIn => 'Sign In';
  String get alreadyHaveAnAccount => 'Already have an account?';
  String get onboardingMessage1 => "";
  // 'Send and receive payments to\nfriends and family quickly.';
  String get onboardingMessage2 => "";
  // 'String Quickly checkout at hundreds of\nmerchants throughout The Bahamas\nwith a single tap.';
  String get onboardingMessage3 => "";

  String get onboardingMessage4 => "";
  // "When you spend you save. Our merchants offer exclusive deals daily. Take advantage and save.";

}
