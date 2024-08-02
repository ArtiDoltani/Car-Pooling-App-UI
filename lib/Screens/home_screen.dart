import 'package:car_pooling_and_ride_sharing_app/Screens/notif_screen.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: UiHelper.appColor,
              toolbarHeight: 80,
              automaticallyImplyLeading: false,
              title: Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/profile.png"),
                  ),
                  const SizedBox(
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
                      // Notification
                    ],
                  ),
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotifionsScreen()));
                    },
                    icon: Icon(
                      Icons.notifications_none,
                      color: UiHelper.color,
                    ))
              ],
            ),
            body: Stack(
              children: [
                Image.asset(
                  "images/map.PNG",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120.0),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.43,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: UiHelper.color,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15, top: 15, bottom: 30),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(224, 170, 79, 1),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              bottomLeft: Radius.circular(8))),
                                      child: Center(
                                          child: Text(
                                        "Find ride",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                color: UiHelper.color,
                                                fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8))),
                                      child: Center(
                                          child: Text(
                                        "Offer ride",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                color: Colors.black45,
                                                fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                // Pick up Button
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    style: UiHelper.styleFrom,
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.green.shade600,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          "Pick up location",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  // color: Colors.black45,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                // Destination location
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    style: UiHelper.styleFrom,
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.red.shade600,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          "Destination location",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  // color: Colors.black45,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                // UiHelper.AppButtons(() {}, "Find ride", 50,
                                //     MediaQuery.of(context).size.width)

                                // DatePickerDialog(
                                //     firstDate: DateTime(2024),
                                //     lastDate: DateTime.now()),

                                const SizedBox(
                                  height: 15,
                                ),
                                // Date pick
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 55,
                                      width: 150,
                                      child: ElevatedButton(
                                        style: UiHelper.styleFrom,
                                        onPressed: () {
                                          // DateTime? datepick =
                                          //     await showDatePicker(
                                          //         context: context,
                                          //         initialDate: DateTime.now(),
                                          //         firstDate: DateTime(2000),
                                          //         lastDate: DateTime(2024));
                                          //         if (datepick!= null) {
                                          //       print(datepick);}
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.calendar_month,
                                              color: Colors.black26,
                                            ),
                                            const SizedBox(
                                              width: 13,
                                            ),
                                            Text("Date & \nTime",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Select seat

                                    SizedBox(
                                      height: 55,
                                      child: ElevatedButton(
                                        style: UiHelper.styleFrom,
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.chair_outlined,
                                              color: Colors.black26,
                                            ),
                                            const SizedBox(
                                              width: 13,
                                            ),
                                            Text("No. of seat",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          UiHelper.AppButtons(() {}, "Find ride", 50,
                              MediaQuery.of(context).size.width),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
