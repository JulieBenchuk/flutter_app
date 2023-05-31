import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/models/crypto_coin.dart';
import 'package:flutter_svg/svg.dart';

class CoinTile extends StatelessWidget {
  const CoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(coin.imageURL),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(coin.name, style: Theme.of(context).textTheme.bodyMedium),
      subtitle: Text(
        coin.priceUSD.toString(),
        style: Theme.of(context).textTheme.bodySmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin.name);
      },
    );
  }
}
