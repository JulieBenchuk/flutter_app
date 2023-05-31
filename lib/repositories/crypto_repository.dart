import 'package:dio/dio.dart';
import 'package:flutter_app/repositories/models/crypto_coin.dart';

class CryptoRepository {
  Future<List<CryptoCoin>> getCryptoList() async {
    const String baseURL =
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH&tsyms=USD';
    final response = await Dio().get(baseURL);
    final data = response.data as Map<String, dynamic>;
    final dataRAW = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRAW.entries.map((e) {
      final dataUSD =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = dataUSD['PRICE'];
      final imageURL = dataUSD['IMAGEURL'];
      return CryptoCoin(
          name: e.key,
          priceUSD: price,
          imageURL: 'https://cryptocompare.com/$imageURL');
    }).toList();
    return cryptoCoinsList;
  }
}
