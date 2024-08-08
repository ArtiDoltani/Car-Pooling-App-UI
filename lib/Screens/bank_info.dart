import 'package:car_pooling_and_ride_sharing_app/Screens/money_sended.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class BankInfo extends StatelessWidget {
  const BankInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.CustomAppBar("Bank information", () {
        Navigator.pop(context);
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Account holder name",
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              UiHelper.customTextField("Enter account holder name"),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Bank name",
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              UiHelper.customTextField("Enter bank name"),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Branch code",
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              UiHelper.customTextField("Enter branch code"),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Account number",
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              UiHelper.customTextField("Enter account number"),
            ]),
          ),
          UiHelper.AppButtons(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoneySended()));
          }, "Send to bank (100.00)")
        ],
      ),
    );
  }
}
