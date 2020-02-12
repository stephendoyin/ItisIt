import 'package:provider/provider.dart';
import './core/language/language.dart';
import './core/theme/theme.dart' as theme;
import 'package:chat_mobile/routers.dart';
import 'package:flutter/material.dart';

import 'global_providers.dart';

// Run app
void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<theme.ThemeProvider>.value(value: themeProvider),
        ChangeNotifierProvider<LanguageProvider>.value(value: languageProvider)
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: pushSplashPage(context),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    pushSplashPage(context);
    return Scaffold();
  }
}
