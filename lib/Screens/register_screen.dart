import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: 370,
                color: const Color.fromRGBO(38, 77, 102, 1),
                child: Column(
                  //    mainAxisAlignment: MainAxisAlignment.start,
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
                    "Register",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 20, top: 10),
                    child: Text(
                      "Welcome, please create your account using email address",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                  UiHelper.customTextField(
                      "Enter your name", Icons.person_outlined),
                  UiHelper.customTextField(
                      "Enter your email address", Icons.email_outlined),
                  UiHelper.customTextField(
                      "Enter your phone number", Icons.phone),
                  const SizedBox(
                    height: 25,
                  ),
                  UiHelper.AppButtons(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpScreen()));
                  }, "Register")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
