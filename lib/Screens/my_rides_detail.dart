import 'package:car_pooling_and_ride_sharing_app/models/myrides.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class MyRidesDetail extends StatelessWidget {
  final VoidCallback onCancel;
  MyRidesDetail({super.key, required this.onCancel, required MyRides ride});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.CustomAppBar("Ride detail", () {
        Navigator.pop(context);
      }),
      body: Stack(
        children: [
          const RideDetail(),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.79),
            child: Container(
              color: const Color.fromRGBO(244, 244, 244, 1.0),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.AppButtons(() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              backgroundColor:
                                  const Color.fromRGBO(254, 254, 254, 1.0),
                              contentTextStyle:
                                  Theme.of(context).textTheme.titleMedium,
                              content: const Text(
                                "Are you sure you want to cancel your ride?",
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    UiHelper.AppButtons(() {
                                      Navigator.pop(context);
                                    }, "No", 40, 110),
                                    UiHelper.AppButtons(() {
                                      onCancel(); // Remove the ride
                                      Navigator.of(context)
                                          .pop(); // Dismiss dialog
                                      Navigator.of(context).pop();
                                    }, "Yes", 40, 110),
                                  ],
                                )
                              ],
                            );
                          });
                    }, "Cancel ride", 50, 170, UiHelper.appColor,
                        UiHelper.color),
                    UiHelper.AppButtons(() {}, "Message", 50, 170)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RideDetail extends StatelessWidget {
  const RideDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('images/jec.PNG', fit: BoxFit.cover)),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Jacob Jones", style: TextStyle(fontSize: 20)),
                    Row(
                      children: [
                        Text("4.8",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade600)),
                        Icon(
                          Icons.star,
                          color: UiHelper.orangeColor,
                          size: 16,
                        ),
                        Text(" | 120 review",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade600)),
                      ],
                    ),
                    Text("Join 2016",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade600))
                  ],
                ),
              ),
              Text("\$15.00",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: UiHelper.appColor)),
            ],
          ),
        ),
        //Rider Detail container
        Container(
          width: MediaQuery.of(context).size.width,
          color: UiHelper.color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rider detail",
                        style: TextStyle(
                            fontSize: 16,
                            color: UiHelper.orangeColor,
                            fontWeight: FontWeight.w500)),
                    InkWell(
                      onTap: () {},
                      child: Text("Map view",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green.shade800,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.green.shade600,
                    ),
                    const Text(
                      "Mumbai,2464 Royal Lnord",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),

                // destination
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.red.shade600,
                    ),
                    const Text(
                      "Pune, 2464 Royal Ln. Mesa",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // Dotted line
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width, 1),
                  painter: DottedLinePainter(),
                ),

                // timings
                SizedBox(
                  height: 60, // Set the height of the Row
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Start time",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text("25 June, 09:00",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.grey[600])),
                          ],
                        ),
                      ),
                      UiHelper.customverticalDivider(),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Return time",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text("25 June, 09:00",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.grey[600])),
                          ],
                        ),
                      ),
                      UiHelper.customverticalDivider(),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ride with",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text("150 people",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.grey[600])),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Passenger container
        Container(
            width: MediaQuery.of(context).size.width,
            color: UiHelper.color,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Passenger",
                        style: TextStyle(
                            fontSize: 16,
                            color: UiHelper.orangeColor,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("2 seat booked (1 male, 1 female)",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.grey[700])),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        UiHelper.passengerSeat(
                            "images/dev.PNG", "Savannah Nguyen"),
                        UiHelper.passengerSeat(
                            "images/jen.PNG", "Brooklyn Simmons"),
                        UiHelper.passengerSeat(
                            "images/empt.png", "Empty \nseat"),
                        UiHelper.passengerSeat(
                            "images/empt.png", "Empty \nseat"),
                      ],
                    )
                  ],
                ))),
        const SizedBox(
          height: 20,
        ),
        // Review container
        Container(
            width: MediaQuery.of(context).size.width,
            color: UiHelper.color,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Review",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: UiHelper.orangeColor,
                                  fontWeight: FontWeight.w500)),
                          InkWell(
                            onTap: () {},
                            child: Text("View all",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: UiHelper.appColor,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // Reviews
                      ListView.separated(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 2,
                        separatorBuilder: (context, index) =>
                            Divider(height: 1, color: Colors.grey[300]),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("images/gu.PNG"),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Wade Warren",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                          Text("25 Jan 2023"),
                                        ],
                                      ),
                                    ),
                                    const Text("4.5",
                                        style: TextStyle(
                                          fontSize: 16,
                                        )),
                                    Icon(
                                      Icons.star,
                                      color: UiHelper.orangeColor,
                                      size: 16,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                    "Lorem ipsum dolor sit amet consectetur. Allaliquam sit mollis adipiscing donec ut sed. Dictum dignissim enim condimentum vitae aliquam sed.",
                                    style: TextStyle(color: Colors.grey[600]))
                              ],
                            ),
                          );
                        },
                      ),
                    ]))),
        const SizedBox(
          height: 15,
        ),

        //Vehicle info container
        Padding(
          padding: const EdgeInsets.only(bottom: 110),
          child: Container(
              width: MediaQuery.of(context).size.width,
              color: UiHelper.color,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Vehicle info",
                        style: TextStyle(
                            fontSize: 16,
                            color: UiHelper.orangeColor,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Car model",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.grey[700])),
                    Text(
                      "Toyota Matrix | KJ 5454 | Black colour",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Facilities",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.grey[700])),
                    Text(
                      "AC, Luggage space, Music system",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )),
        )
      ],
    ));
  }
}

// dotted line class

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    double dashWidth = 5, dashSpace = 5;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
