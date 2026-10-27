import 'package:flutter/material.dart';
import 'package:movies/l10n/app_localizations.dart';
import 'package:movies/util/routes/page_type/page_type.dart';
import 'package:movies/util/routes/ui_manager.dart';


void main() {
  // configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: UiManager.getRoutes,
      title: 'Movies App',
      initialRoute: PageType.splash.name,
    );
  }
}
