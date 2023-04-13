import 'package:flutter/material.dart';

import '../../../model/currency_model.dart';

class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget({
    super.key,
    required this.currency,
  });

  final CurrencyModel currency;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(currency.name!.substring(0, 3)),
        ),
        title: Text(currency.name!),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Buy: ${currency.buy}  -  '),
            Text('Sell: ${currency.sell ?? 'ND'}  -  '),
            Text('Var: ${currency.variation}'),
          ],
        ),
      ),
    );
  }
}

/*
Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Buy: ',
                children: [
                  TextSpan(
                      text: currency.buy?.toStringAsFixed(2),
                      style: const TextStyle(fontWeight: FontWeight.w600))
                ],
              ),
              TextSpan(
                text: ' - Sell: ',
                children: [
                  TextSpan(
                      text: currency.sell?.toStringAsFixed(2),
                      style: const TextStyle(fontWeight: FontWeight.w600))
                ],
              ),
              TextSpan(
                text: ' - Variation: ',
                children: [
                  TextSpan(
                      text: currency.variation?.toStringAsFixed(2),
                      style: const TextStyle(fontWeight: FontWeight.w600))
                ],
              ),
            ],
          ),
        ),
*/
