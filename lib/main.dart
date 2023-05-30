import 'package:flutter/material.dart';
import 'package:flutter_app/routes/router.dart';
import 'package:flutter_app/ui/theme/theme.dart';

void main() {
  runApp(const CryptoCurrencyListAPP());
}

class CryptoCurrencyListAPP extends StatelessWidget {
  const CryptoCurrencyListAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crypto Currency App",
      theme: darkTheme,
      routes: routes,
    );
  }
}
