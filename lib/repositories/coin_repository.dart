import 'package:flutter_cripto_coins/models/coin.dart';
import 'package:flutter_cripto_coins/shared/themes/app_images.dart';

class CoinRepository {
  static List<Coin> table = [
    Coin(
      icon: AppImages.bitCoin,
      name: 'Bitcoin',
      initials: 'BTC',
      price: 90578.96,
    ),
    Coin(
      icon: AppImages.cardano,
      name: 'Cardano',
      initials: 'ADA',
      price: 1.62,
    ),
    Coin(
      icon: AppImages.ethereum,
      name: 'Ethereum',
      initials: 'ETH',
      price: 6661.84,
    ),
    Coin(
      icon: AppImages.tether,
      name: 'Tether',
      initials: 'USDT',
      price: 5.32,
    ),
    Coin(
      icon: AppImages.usdCoin,
      name: 'USD Coin',
      initials: 'USDC',
      price: 5.32,
    ),
    Coin(
      icon: AppImages.xrp,
      name: 'XRP',
      initials: 'XRP',
      price: 2.01,
    ),
  ];
}
