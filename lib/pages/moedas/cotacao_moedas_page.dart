import 'package:f290_dsm_widgets_playground/model/currency_model.dart';
import 'package:f290_dsm_widgets_playground/services/currency_service.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/currency_widget.dart';

class CotacaoMoedasPage extends StatelessWidget {
  static List<CurrencyModel>? currencies = [];
  static final service = CurrencyService();

  const CotacaoMoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: service.getCurrencies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.none ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: SizedBox(
              height: 200,
              child: LoadingIndicator(
                indicatorType: Indicator.pacman,
                colors: [
                  Colors.yellow,
                  Colors.red,
                  Colors.orange,
                ],
              ),
            ),
          );
        }
        if (snapshot.hasError) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.faceFrown,
                  size: 150,
                ),
                Text(
                  snapshot.error.toString(),
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          );
        }
        currencies = snapshot.data;
        return ListView.builder(
          itemCount: currencies!.length,
          itemBuilder: (context, index) {
            return CurrencyWidget(
              currency: currencies![index],
            );
          },
        );
      },
    );
  }
}
