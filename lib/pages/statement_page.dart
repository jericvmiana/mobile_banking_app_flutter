import 'package:flutter/material.dart';
import 'package:mobile_banking_app_flutter/models/balance_debit.dart';
import 'package:mobile_banking_app_flutter/models/transaction.dart';
import 'package:mobile_banking_app_flutter/utils/color_utils.dart';
import 'package:mobile_banking_app_flutter/widgets/balance_debit_tile.dart';
import 'package:mobile_banking_app_flutter/widgets/graph.dart';
import 'package:mobile_banking_app_flutter/widgets/transaction_list.dart';

class StatementPage extends StatefulWidget {
  const StatementPage({super.key});

  @override
  State<StatementPage> createState() => _StatementPageState();
}

class _StatementPageState extends State<StatementPage> {
  int _selectedIndex = 0;

  final List<Transaction> transactions = [
    Transaction(name: "Jeric Miana", date: "Today, 12:30 pm", value: "-\$180"),
    Transaction(name: "Wade Warren", date: "Today, 12:30 pm", value: "-\$870"),
    Transaction(
        name: "Cameron Williamson", date: "Today, 12:30 pm", value: "-\$200"),
  ];

  String getInitials(String name) {
    List<String> nameSplit = name.split(" ");
    String initials = "";

    for (var word in nameSplit) {
      if (word.isNotEmpty) {
        initials += word[0].toUpperCase();
      }
    }

    return initials;
  }

  Widget _segmentButton(String title, int index) {
    bool isSelected = index == _selectedIndex;
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? ColorUtils.appGreen : Colors.transparent,
        elevation: 0,
        shape: const StadiumBorder(),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> dates = [
      'Day',
      'Week',
      'Month',
      'Year',
    ];

    final List<BalanceDebit> balancesDebits = [
      BalanceDebit(
        value: "\$12,635.00",
        title: "Balance",
        color: const Color.fromARGB(255, 201, 228, 251),
      ),
      BalanceDebit(
        value: "\$8,900.00",
        title: "Debits",
        color: const Color.fromARGB(255, 249, 224, 233),
      ),
      BalanceDebit(
        value: "\$12,635.00",
        title: "Balance",
        color: const Color.fromARGB(255, 246, 242, 208),
      ),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                  color: ColorUtils.appGreenBg,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(dates.length, (index) {
                    String item = dates[index];
                    return _segmentButton(item, index);
                  }),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: balancesDebits.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        BalanceDebitTile(
                          model: balancesDebits[index],
                        ),
                        const SizedBox(width: 15.0),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Graph(),
              const SizedBox(height: 10),
              TransactionList(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
