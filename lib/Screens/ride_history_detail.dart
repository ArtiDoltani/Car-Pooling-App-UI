import 'package:car_pooling_and_ride_sharing_app/Screens/my_rides_detail.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RideHistoryDetail extends StatefulWidget {
  const RideHistoryDetail({Key? key}) : super(key: key);

  @override
  State<RideHistoryDetail> createState() => _RideHistoryDetailState();
}

class _RideHistoryDetailState extends State<RideHistoryDetail> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.CustomAppBar("Ride detail", () {
        Navigator.pop(context);
      }),
      body: SingleChildScrollView(
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
                        const Text("Jacob Jones",
                            style: TextStyle(fontSize: 20)),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rider detail",
                        style: TextStyle(
                            fontSize: 16,
                            color: UiHelper.orangeColor,
                            fontWeight: FontWeight.w500)),

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
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
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
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
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
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
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
            //Vehicle info container
            Container(
                width: MediaQuery.of(context).size.width,
                color: UiHelper.color,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 12),
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

            // Dialogue Box
            const SizedBox(height: 20),
            UiHelper.AppButtons(() {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      backgroundColor: UiHelper.color,
                      content: SingleChildScrollView(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Image.asset(
                            "images/rate_ride.png",
                            //   width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Rate your ride",
                            style: TextStyle(
                                color: UiHelper.appColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RatingBar.builder(
                              itemSize: 30,
                              itemPadding: EdgeInsets.symmetric(horizontal: 5),
                              itemBuilder: (context, _) =>
                                  Icon(Icons.star, color: UiHelper.orangeColor),
                              onRatingUpdate: (rating) => setState(() {
                                    this.rating = rating;
                                  })),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                              maxLines: 4,
                              decoration: InputDecoration(
                                filled: true,
                                hintText: "Say something",
                                fillColor: UiHelper.color,
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
                          SizedBox(
                            height: 20,
                          ),
                          UiHelper.AppButtons(() {}, "Send")
                        ]),
                      ),
                    );
                  });
            }, "Rate your ride")
          ],
        ),
      ),
    );
  }
}
