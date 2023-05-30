import '../features/crypto_item/crypto_item.dart';
import '../features/crypto_list/crypto_list.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoItemScreen(),
};
