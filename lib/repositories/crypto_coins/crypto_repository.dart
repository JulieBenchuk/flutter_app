import 'package:dio/dio.dart';
import 'package:flutter_app/repositories/crypto_coins/crypto_coins.dart';

class CryptoRepository implements AbstractCryptoRepository {
  @override
  Future<List<CryptoCoin>> getCryptoList() async {
    const String cryptoListURL =
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AID,CAG,DOV&tsyms=USD';
    final response = await Dio().get(cryptoListURL);
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
