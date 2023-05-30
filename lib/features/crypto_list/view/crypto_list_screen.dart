import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

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
          itemBuilder: (context, i) => CoinTile(coinName: coinName),
        ));
  }
}
