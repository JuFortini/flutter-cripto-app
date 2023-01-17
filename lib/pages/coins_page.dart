import 'package:flutter/material.dart';
import 'package:flutter_cripto_coins/models/coin.dart';
import 'package:flutter_cripto_coins/repositories/coin_repository.dart';
import 'package:flutter_cripto_coins/shared/themes/app_colors.dart';
import 'package:flutter_cripto_coins/shared/themes/text_styles.dart';
import 'package:intl/intl.dart';

class CoinsPage extends StatefulWidget {
  const CoinsPage({super.key});

  @override
  State<CoinsPage> createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
  final coinList = CoinRepository.table;

  List<Coin> selectedCoins = [];

  NumberFormat brlCurrencyFormat = NumberFormat.currency(
    locale: "pt_BR",
    name: "R\$",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Cripto Moedas'),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: coinList.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int index) {
          Coin coin = coinList[index];
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            leading: selectedCoins.contains(coin)
                ? Container(
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: AppColors.secondary.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.check_rounded,
                        color: AppColors.white,
                      ),
                    ),
                  )
                : SizedBox(
                    width: 40.0,
                    child: Image.asset(coin.icon),
                  ),
            title: Text(
              coin.name,
              style: TextStyles.fontRegular,
            ),
            trailing: Text(
              brlCurrencyFormat.format(coin.price),
              style: TextStyles.fontLight,
            ),
            selected: selectedCoins.contains(coin),
            selectedTileColor: AppColors.primary.withOpacity(0.15),
            onLongPress: () {
              setState(() {
                (selectedCoins.contains(coin))
                    ? selectedCoins.remove(coin)
                    : selectedCoins.add(coin);
              });
            },
          );
        },
      ),
    );
  }
}
