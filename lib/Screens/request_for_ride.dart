import 'package:car_pooling_and_ride_sharing_app/models/myrides.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class RequestForRide extends StatefulWidget {
  const RequestForRide({Key? key}) : super(key: key);

  @override
  State<RequestForRide> createState() => _RequestForRideState();
}

class _RequestForRideState extends State<RequestForRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.CustomAppBar("Request for ride", () {
        Navigator.pop(context);
      }),
      body: ListView.builder(
          itemCount: rides.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: DecoratedBox(
                decoration: UiHelper.customBoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Today  |",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.timelapse_outlined,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "9:00 am",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                    color: Colors.green.shade600, size: 20),
                                const Expanded(
                                    child: Text(
                                  "Mumbai,2464 Royal Lnord",
                                  style: TextStyle(fontSize: 15),
                                )),
                              ],
                            ),

                            // destination
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,
                                    color: Colors.red.shade600, size: 20),
                                const Expanded(
                                    child: Text(
                                  "Pune, 2464 Royal Ln. Mesa",
                                  style: TextStyle(fontSize: 15),
                                )),
                              ],
                            ),
                            Row(
                              children: const [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage("images/empt.png"),
                                ),
                                SizedBox(width: 5),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage("images/dev.PNG"),
                                ),
                                SizedBox(width: 5),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage("images/gu.PNG"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // Request Button
                      Expanded(
                        flex: 7,
                        child: SizedBox(
                          height: 40,
                          child: OutlinedButton(
                            onPressed: () {
                              showRideRequests(context);
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              side: BorderSide(color: UiHelper.appColor),
                            ),
                            child: Text(
                              'Request(2)',
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: UiHelper.appColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // ListTile(
                //   title: Row(
                //     children: [
                //       Expanded(
                //         flex: 9,
                //         child: Padding(
                //           padding: const EdgeInsets.only(top: 10.0, left: 5),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               const Row(
                //                 children: [
                //                   Icon(
                //                     Icons.calendar_month_outlined,
                //                     size: 17,
                //                   ),
                //                   SizedBox(
                //                     width: 5,
                //                   ),
                //                   Text(
                //                     "Today  |",
                //                     style: TextStyle(
                //                         fontSize: 14,
                //                         fontWeight: FontWeight.w500),
                //                   ),
                //                   SizedBox(
                //                     width: 5,
                //                   ),
                //                   Icon(
                //                     Icons.timelapse_outlined,
                //                     size: 17,
                //                   ),
                //                   SizedBox(
                //                     width: 5,
                //                   ),
                //                   Text(
                //                     "9:00 am",
                //                     style: TextStyle(fontSize: 14),
                //                   ),
                //                 ],
                //               ),
                //               Row(
                //                 children: [
                //                   Icon(
                //                     Icons.location_on_outlined,
                //                     color: Colors.green.shade600,
                //                   ),
                //                   const Expanded(
                //                       child: Text(
                //                     "Mumbai,2464 Royal Lnord",
                //                     style: TextStyle(fontSize: 15),
                //                   )),
                //                 ],
                //               ),

                //               // destination
                //               Row(
                //                 children: [
                //                   Icon(
                //                     Icons.location_on_outlined,
                //                     color: Colors.red.shade600,
                //                   ),
                //                   const Expanded(
                //                       child: Text(
                //                     "Pune, 2464 Royal Ln. Mesa",
                //                     style: TextStyle(fontSize: 15),
                //                   )),
                //                 ],
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       Expanded(
                //         flex: 6,
                //         child: UiHelper.AppButtons(() {}, "Request(2)", 50, 80),
                //       )
                //     ],
                //   ),
                // ),
              ),
            );
          }),
    );
  }

  void showRideRequests(BuildContext buildContext) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: DecoratedBox(
                        decoration: UiHelper.customBoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      rides[index].img,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          rides[index].names,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined,
                                                color: Colors.green.shade600,
                                                size: 15),
                                            const Expanded(
                                                child: Text(
                                              "Mumbai,2464 Royal Lnord",
                                              style: TextStyle(fontSize: 12),
                                            )),
                                          ],
                                        ),

                                        // destination
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined,
                                                color: Colors.red.shade600,
                                                size: 15),
                                            const Expanded(
                                                child: Text(
                                              "Pune, 2464 Royal Ln. Mesa",
                                              style: TextStyle(fontSize: 12),
                                            )),
                                          ],
                                        ),
                                        Text("\$15.0 (1 seat)",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    color: UiHelper.appColor,
                                                    fontWeight:
                                                        FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // Buttons
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  UiHelper.AppButtons(() {}, "Decline", 40, 140,
                                      UiHelper.appColor, UiHelper.color),
                                  UiHelper.AppButtons(() {}, "Accept", 40, 140)
                                ],
                              ),
                            ],
                          ),
                        )),
                  );
                }),
          );
        });
  }
}
