import 'package:flutter/material.dart';
import 'presentation/theme/theme_app.dart';
import 'routes/routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
    );
  }
}
