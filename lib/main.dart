import 'package:flutter/material.dart';
import 'features/coin_item/view/view.dart';
import 'features/crypto_list/view/view.dart';

void main() {
  runApp(const CryptoCurrencyListAPP());
}

class CryptoCurrencyListAPP extends StatelessWidget {
  const CryptoCurrencyListAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Crypto Currency App",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.yellow,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  letterSpacing: 1,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87)),
          scaffoldBackgroundColor: Colors.black87,
          primarySwatch: Colors.lightGreen,
          dividerColor: Colors.white30,
          listTileTheme: const ListTileThemeData(iconColor: Colors.white),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),
            bodySmall: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          )),
      routes: {
        '/': (context) => const CryptoListScreen(),
        '/coin': (context) => const CoinItemScreen(),
      },
    );
  }
}
