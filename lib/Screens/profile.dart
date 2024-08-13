import 'package:car_pooling_and_ride_sharing_app/Screens/customer_support.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/edit_profile.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/faqs_screen.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/login.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/my_vehicle.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/privacy_pol.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/rides_history.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/terms_cond.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> itemList = [
      "My vehicle",
      "Ride history",
      "Terms and condition",
      "Privacy policy",
      "FAQS",
      "Customer support",
      "Logout"
    ];

    List<String> subTtitle = [
      "Add vehicle information",
      "See your ride history",
      "Know our terms and condition",
      "Know our policy",
      "Get your question answer",
      "Connect us for any issue",
      ""
    ];

    List<IconData> iconList = [
      Icons.time_to_leave,
      Icons.timelapse,
      Icons.note_alt,
      Icons.privacy_tip_outlined,
      Icons.question_answer,
      Icons.headphones,
      Icons.logout
    ];
    List profileFunctions = [
      const MyVehicle(),
      const RidesHistory(),
      const TermsAndConditions(),
      const PrivacyPolicy(),
      const FAQsScreen(),
      const CustomerSupport(),
    ];
    void _showLogoutDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            backgroundColor: const Color.fromRGBO(254, 254, 254, 1.0),
            contentTextStyle: Theme.of(context).textTheme.titleMedium,
            content: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Are you sure you want to logout this account?",
                textAlign: TextAlign.center,
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  UiHelper.AppButtons(() {
                    Navigator.pop(context);
                  }, "Cancel", 40, 110),
                  UiHelper.AppButtons(() {
                    Navigator.of(context).pop();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }, "Logout", 40, 110),
                ],
              )
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: UiHelper.appColor,
        foregroundColor: UiHelper.color,
        title: const Center(child: Text("Profile")),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: const Color.fromRGBO(244, 244, 244, 1.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/profile.png"),
                  ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "John wilison",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Text("johnwilson@mail.com"),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfile()));
                    },
                    icon: Icon(
                      Icons.edit,
                      color: UiHelper.orangeColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: itemList.length,
              separatorBuilder: (context, index) => Divider(
                height: 1,
                color: Colors.grey[300],
              ),
              itemBuilder: (context, index) {
                final isLogout = itemList[index] == "Logout";
                return InkWell(
                  onTap: () {
                    if (isLogout) {
                      _showLogoutDialog(context);
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => profileFunctions[index],
                        ),
                      );
                    }
                  },
                  child: ListTile(
                    tileColor: UiHelper.color,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    leading: Icon(
                      iconList[index],
                      color: isLogout ? Colors.red : null,
                    ),
                    title: Text(
                      itemList[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: isLogout ? Colors.red : null,
                      ),
                    ),
                    subtitle: isLogout
                        ? null
                        : Text(
                            subTtitle[index],
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
