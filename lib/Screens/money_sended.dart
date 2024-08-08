import 'package:car_pooling_and_ride_sharing_app/Screens/bottom_nav.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class MoneySended extends StatelessWidget {
  const MoneySended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "images/send_money.png",
                    width: 200,
                  ),
                  Text(
                    "\$150.00 sended",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: UiHelper.appColor),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.0),
                    child: Text(
                      "Congratulation your money successfully send in your bank",
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Botm_nav_Screen()));
                },
                child: Text(
                  "Back to home",
                  style: TextStyle(fontSize: 19, color: UiHelper.appColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
