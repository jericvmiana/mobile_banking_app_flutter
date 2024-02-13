import 'package:flutter/material.dart';
import 'package:mobile_banking_app_flutter/models/currency.dart';
import 'package:mobile_banking_app_flutter/utils/color_utils.dart';

class CurrencyListTile extends StatelessWidget {
  final Currency currency;
  const CurrencyListTile({
    super.key,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: ClipOval(
          child: Image.asset(
            "assets/${currency.currency}.png",
            width: 50.0,
            height: 50.0,
            fit: BoxFit.cover,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currency.name,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    currency.description,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.green[50],
              child: const Icon(
                Icons.chevron_right,
                color: ColorUtils.appBlack,
                size: 30.0,
              ),
            )
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
