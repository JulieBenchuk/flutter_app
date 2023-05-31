import 'package:flutter/material.dart';

class CryptoItemScreen extends StatefulWidget {
  const CryptoItemScreen({super.key});

  @override
  State<CryptoItemScreen> createState() => _CryptoItemScreenState();
}

class _CryptoItemScreenState extends State<CryptoItemScreen> {
  String? coinName;
  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide string args');
    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
      ),
      body: Center(child: Text(coinName ?? '...')),
    );
  }
}
