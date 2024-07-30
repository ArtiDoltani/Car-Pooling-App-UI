import 'package:car_pooling_and_ride_sharing_app/Screens/bottom_nav.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: UiHelper.appColor, width: 1.5),
      borderRadius: BorderRadius.circular(8),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: UiHelper.appColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        )),
                    Image.asset(
                      'images/5.PNG',
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  const Text(
                    "OTP verification",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 30.0, right: 20, top: 10, bottom: 10),
                    child: Text(
                      "Confirmation code has been sent to your mobile number +91 1234567890",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                  Pinput(
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    // submittedPinTheme: submittedPinTheme,
                    // validator: (s) {
                    //   return s == '2222' ? null : 'Pin is incorrect';
                    // },
                    // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    length: 5,
                    // onCompleted: (pin) => print(pin),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "00:21",
                    style: TextStyle(
                        color: Color.fromRGBO(224, 170, 79, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  UiHelper.AppButtons(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Botm_nav_Screen()));
                  }, "Verify", 45, 330),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Did not receive code?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Resend",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: UiHelper.appColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
