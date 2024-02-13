import 'package:flutter/material.dart';
import 'line_chart.dart';

class Graph extends StatefulWidget {
  final List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  Graph({super.key});

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  String dropdownValue = 'USD';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.calendar_month),
              const SizedBox(width: 5.0),
              const Text("12 Sep 2023 - 18 Sep, 23"),
              const Spacer(),
              DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['PH', 'USD', 'CA']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
          const LineChartSample1(),
        ],
      ),
    );
  }
}
