import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: UiHelper.appColor,
                toolbarHeight: 90,
                automaticallyImplyLeading: false,
                // leading: Padding(
                //   padding: const EdgeInsets.only(left: 10.0),
                //   child: CircleAvatar(
                //     // radius: 50,
                //     backgroundImage: AssetImage("images/profile.png"),
                //   ),
                // ),
                title: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/profile.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome john",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: UiHelper.color,
                                    fontWeight: FontWeight.normal)),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: UiHelper.color,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text("Mumbai",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        color: UiHelper.color,
                                        fontWeight: FontWeight.normal))
                          ],
                        )
                      ],
                    )
                  ],
                )),
            body: Stack(
              children: [
                Image.asset(
                  "images/map.PNG",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: UiHelper.color,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ],
            )));
  }
}
