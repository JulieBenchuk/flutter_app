import 'package:flutter_app/repositories/crypto_coins/crypto_coins.dart';

abstract class AbstractCryptoRepository {
  Future<List<CryptoCoin>> getCryptoList();
}
