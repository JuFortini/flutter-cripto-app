import 'package:flutter/material.dart';
import 'package:flutter_cripto_coins/shared/themes/app_colors.dart';
import 'package:flutter_cripto_coins/shared/themes/text_styles.dart';

import '../models/coin.dart';

class CoinDetailsPage extends StatefulWidget {
  final Coin coin;
  const CoinDetailsPage({super.key, required this.coin});

  @override
  State<CoinDetailsPage> createState() => _CoinDetailsPageState();
}

class _CoinDetailsPageState extends State<CoinDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: Text(
          widget.coin.name,
          style: TextStyles.titleAppBar,
        ),
      ),
    );
  }
}
