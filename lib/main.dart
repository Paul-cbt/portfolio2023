import 'package:flutter/material.dart';
import 'package:portfolio2/appPage.dart';
import 'package:portfolio2/serices/theme.dart';
import 'package:portfolio2/serices/themeAppStateModifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AppStateNotifier>(
      create: (context) => AppStateNotifier(), child: PortfolioApp()));
}

//icon:
//<a href="https://iconscout.com/icons/github" target="_blank">Github Icon</a> by <a href="https://iconscout.com/contributors/unicons">Unicons Font</a> on <a href="https://iconscout.com">IconScout</a>
class PortfolioApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, themeAppState, child) {
        //themeAppState to know if we're in dark mode or note.
        //change notifier provider will rebuild the ui if we change the darkmode variable in services/theme.dart
        return MaterialApp(
          title: 'Paul Caubet || Portfolio',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:
              themeAppState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: AppPage(),
        );
      },
    );
  }
}
