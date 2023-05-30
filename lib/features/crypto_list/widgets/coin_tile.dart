import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoinTile extends StatelessWidget {
  const CoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/bitcoin.svg',
        width: 30,
        height: 30,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(coinName, style: Theme.of(context).textTheme.bodyMedium),
      subtitle: Text(
        '10 000\$',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coinName);
      },
    );
  }
}
