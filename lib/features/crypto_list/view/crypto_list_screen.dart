import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
