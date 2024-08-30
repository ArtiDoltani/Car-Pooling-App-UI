import 'package:car_pooling_and_ride_sharing_app/Screens/money_added.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  TextEditingController expiryController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  Color textColor = Colors.white30;
  @override
  void initState() {
    super.initState();
    expiryController.addListener(() {
      setState(
        () {
          textColor = UiHelper.color;
        },
      );
    });
  }

  void dispose() {
    expiryController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: UiHelper.CustomAppBar("Credit card", () {
          Navigator.pop(context);
        }),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Stack(
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight / 2.7,
                      decoration: BoxDecoration(
                          color: UiHelper.orangeColor,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    Container(
                      width: screenWidth,
                      height: screenHeight / 5.5,
                      decoration: BoxDecoration(
                          color: UiHelper.appColor,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16))),
                    ),
                    Positioned(
                      top: screenHeight / 4.5,
                      left: screenWidth * 0.6,
                      child: Text(
                        "MONTH/YEAR",
                        style: TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight / 3.8,
                      left: screenWidth * 0.6,
                      child: Text(
                        expiryController.text.isNotEmpty
                            ? expiryController.text
                            : ". ./. .",
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight / 6,
                      left: screenWidth * 0.1,
                      child: Text(
                        ". . . .  . . . .  . . . .  . . . .",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight / 3.8,
                      left: screenWidth * 0.1,
                      child: Text(
                        "FULL NAME",
                        style: TextStyle(color: Colors.white60, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "CARD NUMBER",
                  style: UiHelper.vehicleTitleStyle,
                ),
              ),
              UiHelper.customTextField("1234 5678 12345678"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "EXPIRY",
                            style: UiHelper.vehicleTitleStyle,
                          ),
                          SizedBox(
                            height: 50,
                            width: screenWidth / 2.5,
                            child: TextField(
                              controller: expiryController,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: "MM/YY",
                                // Conditional prefixIcon
                                fillColor: UiHelper.color,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 14.0),
                                hintStyle: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),

                      
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV",
                            style: UiHelper.vehicleTitleStyle,
                          ),
                          SizedBox(
                            height: 50,
                            width: screenWidth / 2.5,
                            child: TextField(
                              controller: cvvController,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: "CVV",
                                // Conditional prefixIcon
                                fillColor: UiHelper.color,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 14.0),
                                hintStyle: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                        ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("CARDHOLDER'S NAME",
                    style: UiHelper.vehicleTitleStyle),
              ),
              UiHelper.customTextField("Full Name"),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: UiHelper.AppButtons(() {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MoneyAdded()));
                  }, "Continue"))
            ],
          ),
        ));
  }
}
