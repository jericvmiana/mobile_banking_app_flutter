import 'package:flutter/material.dart';
import 'package:mobile_banking_app_flutter/models/currency.dart';
import 'package:mobile_banking_app_flutter/utils/color_utils.dart';
import 'package:mobile_banking_app_flutter/widgets/account_number_bar.dart';
import 'package:mobile_banking_app_flutter/widgets/currency_list_tile.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                _accountWallet(context),
                const SizedBox(height: 10),
                _currencyList(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Account Wallet Widget

  Widget _accountWallet(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorUtils.appBlack,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "\$36,790.00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add,
                            size: 15,
                            color: ColorUtils.appBlack,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "New",
                            style: TextStyle(
                              color: ColorUtils.appBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const AccountNumberBar(
            accountBalance: '\$10,300',
            accountNumber: '***** **** 5473',
            width: 0.85,
            color: Color.fromARGB(255, 201, 228, 251),
          ),
          const AccountNumberBar(
            accountBalance: '\$10,300',
            accountNumber: '***** **** 5473',
            width: 0.7,
            color: Color.fromARGB(255, 249, 224, 233),
          ),
          const AccountNumberBar(
            accountBalance: '\$10,300',
            accountNumber: '***** **** 5473',
            width: 0.55,
            color: Color.fromARGB(255, 246, 242, 208),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.money,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Deposit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Withdraw",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.transform_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Transfer",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Currency List Widget

  Widget _currencyList(BuildContext context) {
    List<Currency> currencies = [
      Currency(
          currency: "PH",
          description: "Routing number, Bank code, Account number",
          name: "Philippine Peso"),
      Currency(
          currency: "USD",
          description: "Institution number, Transit number, Account number",
          name: "US Dollar"),
      Currency(
        currency: "CA",
        description: "Routing number, Bank code, Account number",
        name: "Canadian Dollar",
      )
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Receive Locally",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.0),
              Divider(),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: currencies.length,
          itemBuilder: (BuildContext context, int index) {
            return CurrencyListTile(currency: currencies[index]);
          },
        ),
      ],
    );
  }
}
