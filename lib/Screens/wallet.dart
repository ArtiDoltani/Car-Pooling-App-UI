import 'package:car_pooling_and_ride_sharing_app/Screens/add_money.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/send_to_bank.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/transaction.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List titleList = ["Transaction", "Add money", "Send to bank"];
    List subTitleList = [
      "View all transaction list",
      "You can easily add money",
      "Easily send money in bank"
    ];
    List<IconData> iconList = [
      Icons.arrow_upward,
      Icons.account_balance_wallet_outlined,
      Icons.add_business,
    ];
    List VoidCallback = [TransactionScreen(), AddMoney(), SendToBank()];
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromRGBO(218, 213, 209, 0.4),
      appBar: AppBar(
          backgroundColor: UiHelper.appColor,
          foregroundColor: UiHelper.color,
          automaticallyImplyLeading: false,
          title: const Center(child: Text("Wallet"))),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("images/wallet.png")),
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: UiHelper.color,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black.withOpacity(0.2))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    "\$150",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: UiHelper.appColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 28),
                  ),
                  const Text(
                    "Available balance",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color: UiHelper.color,
                              surfaceTintColor: UiHelper.color,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.black.withOpacity(0.1)),
                                  borderRadius: BorderRadius.circular(8)),
                              child: ListTile(
                                leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: UiHelper.color,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color:
                                              Colors.black.withOpacity(0.2))),
                                  child: Icon(
                                    iconList[index],
                                    color:
                                        const Color.fromRGBO(224, 170, 79, 1),
                                  ),
                                ),
                                title: Text(
                                  titleList[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                                subtitle: Text(
                                  subTitleList[index],
                                  style: const TextStyle(fontSize: 15),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 17,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              VoidCallback[index]));
                                },
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
