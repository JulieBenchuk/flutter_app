import 'package:flutter/material.dart';

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
      body: const Center(child: Text("Inner Coin Info")),
    );
  }
}
