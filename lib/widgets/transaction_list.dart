import 'package:flutter/material.dart';
import 'package:mobile_banking_app_flutter/models/transaction.dart';
import 'package:mobile_banking_app_flutter/utils/color_utils.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(name: "Jeric Miana", date: "Today, 12:30 pm", value: "-\$180"),
    Transaction(name: "Wade Warren", date: "Today, 12:30 pm", value: "-\$870"),
    Transaction(
        name: "Cameron Williamson", date: "Today, 12:30 pm", value: "-\$200"),
  ];
  TransactionList({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Transactions"),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: const StadiumBorder(),
                backgroundColor: ColorUtils.appGreenBg,
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    "PDF",
                    style: TextStyle(
                      color: ColorUtils.appBlack,
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    color: ColorUtils.appBlack,
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: const StadiumBorder(),
                backgroundColor: ColorUtils.appGreenBg,
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    "CSV",
                    style: TextStyle(
                      color: ColorUtils.appBlack,
                    ),
                  ),
                  Icon(
                    Icons.download_outlined,
                    color: ColorUtils.appBlack,
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.flight_takeoff_sharp,
              ),
            ),
          ],
        ),
        const Divider(),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            Transaction transaction = transactions[index];
            return ListTile(
              leading: CircleAvatar(
                child: Text(getInitials(transaction.name)),
              ),
              title: Text(
                transaction.name,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: ColorUtils.appBlack,
                ),
              ),
              subtitle: Text(
                transaction.date,
                style: const TextStyle(
                  fontSize: 12.0,
                ),
              ),
              trailing: Text(
                transaction.value,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: ColorUtils.appBlack,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
