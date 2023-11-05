import 'package:flutter/material.dart';
import 'package:state_full_practice/Theme/dark_theme.dart';
import 'package:state_full_practice/Theme/light_theme.dart';
import 'package:state_full_practice/l10n/l10n.dart';
import 'state_full_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: const Screen(),
        supportedLocales: L10n.all,
        locale: const Locale('en'),
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ]);
  }
}
