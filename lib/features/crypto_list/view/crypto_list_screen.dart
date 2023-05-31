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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: cryptoList == null
          ? const SizedBox()
          : ListView.separated(
              itemCount: cryptoList!.length,
              separatorBuilder: (context, i) => const Divider(),
              itemBuilder: (context, i) => CoinTile(coin: cryptoList![i]),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download_done),
        onPressed: () async {
          cryptoList = await CryptoRepository().getCryptoList();
          setState(() {});
        },
      ),
    );
  }
}
