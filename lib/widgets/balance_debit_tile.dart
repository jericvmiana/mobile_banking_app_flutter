import 'package:flutter/material.dart';
import 'package:mobile_banking_app_flutter/models/balance_debit.dart';

class BalanceDebitTile extends StatelessWidget {
  final BalanceDebit model;
  const BalanceDebitTile({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: model.color,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.value,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 5),
            Text(model.title),
          ],
        ),
      ),
    );
  }
}
