import 'package:flutter/material.dart';

class AccountNumberBar extends StatelessWidget {
  final String accountNumber;
  final String accountBalance;
  final double width;
  final Color? color;
  const AccountNumberBar({
    super.key,
    required this.accountBalance,
    required this.accountNumber,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(accountNumber),
                const Spacer(),
                Image.asset(
                  'assets/visa.png',
                  height: 25.0,
                ),
              ],
            ),
            Text(
              accountBalance,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
