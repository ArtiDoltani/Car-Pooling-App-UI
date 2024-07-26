import 'package:car_pooling_and_ride_sharing_app/Screens/fourthScreen.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        backgroundColor: const Color.fromRGBO(38, 77, 102, 1),
        title: UiHelper.timing_row(),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(245, 245, 244, 0.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/3.PNG",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 470,
            ),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(38, 77, 102, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              // height: 300,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Fast and Reliable",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(245, 245, 244, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                    child: Center(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sapien suspendisse gravida miullamcorper. Tellus nunc in id cursus viverra",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(245, 245, 244, 1)),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150.0),
                    child: Row(
                      children: [
                        UiHelper.light_swip_container(
                            10, 8, const Color.fromRGBO(216, 168, 82, 0.4)),
                        const SizedBox(width: 8),
                        UiHelper.light_swip_container(
                          50,
                          8,
                          const Color.fromRGBO(241, 163, 74, 1),
                        ),
                        const SizedBox(width: 8),
                        UiHelper.light_swip_container(
                            10, 8, const Color.fromRGBO(216, 168, 82, 0.4)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  UiHelper.AppButtons(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FourthScreen()));
                  }, "Next")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
