import 'package:flutter/material.dart';
import 'package:state_management/app_router.dart';
import 'package:provider/provider.dart';
// import 'package:state_management/models/cart.dart';
// import 'package:state_management/models/catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: const [],
      child: MaterialApp.router(
        title: 'State Management - Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorSchemeSeed: Colors.blue,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}
