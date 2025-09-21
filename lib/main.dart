import 'package:flutter/material.dart';
import 'package:sesi_check/routing/router.dart';
import 'package:sesi_check/ui/core/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SESI Check',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: AppTheme.temaClaro,
    );
  }
}