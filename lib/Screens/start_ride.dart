import 'package:car_pooling_and_ride_sharing_app/Screens/end_road_map.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class StartRide extends StatefulWidget {
  const StartRide({Key? key}) : super(key: key);

  @override
  State<StartRide> createState() => _StartRideState();
}

class _StartRideState extends State<StartRide> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: UiHelper.CustomAppBar("Ride request", () {
          Navigator.pop(context);
        }),
        body: Stack(
          children: [
            Image.asset("images/map.PNG", width: screenWidth, fit: BoxFit.fill),
            Padding(
              padding: EdgeInsets.only(top: screenHeight / 2.5),
              child: Container(
                  width: screenWidth,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(244, 244, 244, 1.0),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Ride start on 25 june 2023",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          // Passengers
                          Row(
                            children: [
                              UiHelper.passengerSeat(
                                  "images/dev.PNG", "Cameron Williamson"),
                              UiHelper.passengerSeat(
                                  "images/jec.PNG", "Brooklyn Simmons"),
                              UiHelper.passengerSeat(
                                  "images/gu.PNG", "leslie Jacob"),
                              UiHelper.passengerSeat(
                                  "images/sev.PNG", "alexander jones"),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),

                          custonWidget(
                              screenWidth, Icons.time_to_leave, " Ride start"),
                          const Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475"),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          custonWidget(screenWidth, Icons.location_on,
                              "Pick up cameron willimson"),
                          const Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475"),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          custonWidget(screenWidth, Icons.location_on,
                              "Pick up brooklyn simmons"),
                          const Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475"),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          custonWidget(screenWidth, Icons.location_on,
                              "Drop up cameron willimson"),
                          const Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475"),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          custonWidget(screenWidth, Icons.location_on,
                              "Pick up  leslie alexander"),
                          const Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475"),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          custonWidget(screenWidth, Icons.location_on,
                              "Pick up jacob jones"),
                          const Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475"),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          custonWidget(
                              screenWidth, Icons.time_to_leave, "Drive"),
                          const Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475"),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          custonWidget(screenWidth, Icons.location_on,
                              "Drop up brooklyn simmons"),
                          const Text(
                              "2715 Ash Dr. San Jose, South Dakota 83475")
                        ],
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight / 1.2),
              child: Container(
                width: screenWidth,
                color: const Color.fromRGBO(244, 244, 244, 1.0),
                child: UiHelper.AppButtons(() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const EndRoadMap()));
                }, "Start ride"),
              ),
            )
          ],
        ));
  }

  Row custonWidget(double screenWidth, IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 20,
        ),
        SizedBox(
          width: screenWidth * 0.03,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.grey,
              ),
        ),
      ],
    );
  }
}
