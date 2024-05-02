import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_personal_portifolio/app/core/common/constants/app_theme.dart';
import 'package:my_personal_portifolio/app/modules/splash/presenter/pages/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guilherme Martins - Portifolio',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt'),
      ],
      theme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
