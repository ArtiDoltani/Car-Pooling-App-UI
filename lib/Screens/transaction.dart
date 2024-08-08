import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  List<String> transList = [
    'Paid to rider',
    'Add to wallet',
    'Receive from ride taker',
  ];
  List amounts = [24, 30, 10];
  Color _getAmountColor(int amount) {
    if (amount >= 30) {
      return Colors.green; // For negative amounts
    } else {
      return Colors.red; // For positive amounts
    }
    // Default color
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.CustomAppBar('Transaction', () {
        Navigator.pop(context);
      }),
      body: ListView.separated(
        itemCount: transList.length,
        separatorBuilder: (context, index) =>
            Divider(height: 1, color: Colors.grey[300]),
        itemBuilder: (context, index) {
          int amount = amounts[index];
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            title: Text(transList[index],
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            subtitle: const Text("Jenny Wilson | 25 Jan 2023"),
            trailing: Text("\$${amount}",
                style: TextStyle(fontSize: 16, color: _getAmountColor(amount))),
          );
        },
      ),
    );
  }
}
