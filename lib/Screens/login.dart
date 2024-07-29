import 'package:car_pooling_and_ride_sharing_app/Screens/register_screen.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 0.9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromRGBO(38, 77, 102, 1),
                child: Column(
                  children: [
                    Image.asset(
                      'images/5.PNG',
                      width: MediaQuery.of(context).size.width,
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
                    "Login",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 18, top: 10),
                    child: Text(
                      "Welcome, please login your account using mobile number",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 25),
                    child: SizedBox(
                      width: 385,
                      height: 50,
                      child: IntlPhoneField(
                        // ignore: deprecated_member_use
                        searchText: "Filter",
                        showDropdownIcon: false,
                        disableLengthCheck: true,
                        flagsButtonPadding: const EdgeInsets.all(10),
                        decoration: InputDecoration(
                          hintText: 'Enter your mobile number',
                          filled: true,
                          fillColor: const Color.fromRGBO(255, 255, 255, 1),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none),
                          hintStyle: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  UiHelper.AppButtons(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  }, "Login")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
