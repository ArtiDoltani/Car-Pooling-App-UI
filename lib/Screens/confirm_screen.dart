import 'package:car_pooling_and_ride_sharing_app/Screens/bottom_nav.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class ConfirmedScreen extends StatelessWidget {
  const ConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Column(
              children: [
                Center(
                  child: Image.asset("images/request_car.png",
                      width: MediaQuery.of(context).size.width * 0.7,
                      fit: BoxFit.fill),
                ),
                Text(
                  "Congratulation",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45.0),
                  child: Text(
                    "Your car pooing has been confirmed",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
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
    );
  }
}
