import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/crypto_repository.dart';
import 'package:flutter_app/repositories/models/crypto_coin.dart';
import '../widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? cryptoList;
  @override
  void initState() {
    _getCryptoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: cryptoList == null
          ? const SizedBox()
          : ListView.separated(
              padding: const EdgeInsets.only(top: 20),
              itemCount: cryptoList!.length,
              separatorBuilder: (context, i) => const Divider(),
              itemBuilder: (context, i) {
                final coin = cryptoList![i];
                return CoinTile(coin: coin);
              }),
    );
  }

  Future<List<CryptoCoin>> _getCryptoList() async =>
      cryptoList = await CryptoRepository().getCryptoList();
}
