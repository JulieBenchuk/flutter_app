import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    final coinName = "Bitcoin";
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home page"),
        ),
        body: ListView.separated(
          itemCount: 7,
          separatorBuilder: (context, i) => const Divider(),
          itemBuilder: (context, i) => ListTile(
            leading: SvgPicture.asset(
              'assets/svg/bitcoin.svg',
              width: 30,
              height: 30,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            title:
                Text(coinName, style: Theme.of(context).textTheme.bodyMedium),
            subtitle: Text(
              '10 000\$',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/coin', arguments: coinName);
            },
          ),
        ));
  }
}

class CoinItemScreen extends StatefulWidget {
  const CoinItemScreen({super.key});

  @override
  State<CoinItemScreen> createState() => _CoinItemScreenState();
}

class _CoinItemScreenState extends State<CoinItemScreen> {
  String? coinName;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide string args');
    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
      ),
      body: const Center(child: Text("BTCN")),
    );
  }
}
