import 'package:f290_dsm_widgets_playground/model/currency_model.dart';
import 'package:f290_dsm_widgets_playground/pages/moedas/widgets/currency_widget.dart';
import 'package:flutter/material.dart';

class CotacaoMoedasPage extends StatelessWidget {
  final List<CurrencyModel> currencies;

  const CotacaoMoedasPage({super.key, required this.currencies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currencies.length,
      itemBuilder: (context, index) {
        return CurrencyWidget(
          currency: currencies[index],
        );
      },
    );
  }
}
