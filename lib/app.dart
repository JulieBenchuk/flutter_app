import 'package:flutter/material.dart';
import 'package:flutter_app/routes/router.dart';
import 'package:flutter_app/ui/theme/theme.dart';

class CryptoCurrencyListApp extends StatelessWidget {
  const CryptoCurrencyListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crypto Currency App",
      theme: darkTheme,
      routes: routes,
    );
  }
}
