import 'package:flutter/material.dart';
import 'package:widget_soriachavarin02/config/router/app_router.dart';
import 'package:widget_soriachavarin02/config/theme/app_theme.dart';
//import 'package:widget_soriachavarin02/presentation/screen/home/home_screen.dart';

//soria chavarin Jorge Adan 20400830
//03/03/2026
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).themeData(),
      routerConfig: appRouter,
    );
  }
}
