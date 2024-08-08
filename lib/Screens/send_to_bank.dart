import 'package:car_pooling_and_ride_sharing_app/Screens/bank_info.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class SendToBank extends StatelessWidget {
  const SendToBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.CustomAppBar("Send to bank", () {
        Navigator.pop(context);
      }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("images/wallet.png")),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Add amount to send",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            UiHelper.customTextField("Enter amount to add"),
            const SizedBox(
              height: 25,
            ),
            UiHelper.AppButtons(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BankInfo()));
            }, "Continue")
          ],
        ),
      ),
    );
  }
}
