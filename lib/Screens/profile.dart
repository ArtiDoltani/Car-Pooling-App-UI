import 'package:car_pooling_and_ride_sharing_app/Screens/edit_profile.dart';
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
      "See your ride history",
      "Add vehicle information",
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
                return ListTile(
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
