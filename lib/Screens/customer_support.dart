import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerSupport extends StatelessWidget {
  const CustomerSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: UiHelper.CustomAppBar("Customer Support", () {
          Navigator.pop(context);
        }),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20),
                  child: Image.asset(
                    "images/cust_suprt.png",
                    width: MediaQuery.of(context).size.width * 0.35,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Get in touch",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // call button
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: ElevatedButton(
                          style: UiHelper.styleFrom,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.phone,
                                color: UiHelper.appColor,
                              ),
                              Text(
                                "Call us",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: UiHelper.appColor),
                              )
                            ],
                          )),
                    ),

                    // mail Button
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: ElevatedButton(
                          style: UiHelper.styleFrom,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: UiHelper.appColor,
                              ),
                              Text(
                                "Mail us",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: UiHelper.appColor),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  "Name",
                  style: UiHelper.vehicleTitleStyle,
                ),
              ),
              UiHelper.customTextField("Enter your name"),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  "Email",
                  style: UiHelper.vehicleTitleStyle,
                ),
              ),
              UiHelper.customTextField("Enter your email address"),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Message",
                      style: UiHelper.vehicleTitleStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: "Write your message",
                          fillColor: const Color.fromRGBO(255, 255, 255, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    UiHelper.AppButtons(() {}, "Submit")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
