import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'size_config.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'welcome_screen.dart';
import 'styling.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Learning Platform Application',
              theme: AppTheme.lightTheme,
              home: WelcomeScreen(),
            );
          },
        );
      },
    );
  }
}
