import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class OfferRide extends StatefulWidget {
  const OfferRide({Key? key}) : super(key: key);

  @override
  State<OfferRide> createState() => _OfferRideState();
}

class _OfferRideState extends State<OfferRide> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: UiHelper.CustomAppBar("Offer ride", () {
        Navigator.pop(context);
      }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: screenWidth,
                height: screenHeight * 0.25,
                color: UiHelper.color,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.green.shade600,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pick up location",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "B 420 Broome station, New york, NY 100013 USA",
                                  softWrap: true,
                                  overflow: TextOverflow
                                      .clip, 
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.red,
                        ),
                        // SizedBox(
                        //   width: screenWidth * 0.02,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Destination location",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "B 420 Broome station, New york, NY 100013 USA",
                                  softWrap: true,
                                  overflow: TextOverflow
                                      .clip, // This prevents overflow by clipping excess text
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                "Price",
                style: UiHelper.vehicleTitleStyle,
              ),
            ),
            UiHelper.customTextField("Write price per seat"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Your car",
                style: UiHelper.vehicleTitleStyle,
              ),
            ),
            UiHelper.CustomButton(
                "Select your car", () {}, Icons.arrow_drop_down),

            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  "Available seat",
                  style: UiHelper.vehicleTitleStyle,
                )),
            UiHelper.CustomButton(
                "Select available seat", () {}, Icons.arrow_drop_down),

            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  "Facility (i.e Ac, Music etc)",
                  style: UiHelper.vehicleTitleStyle,
                )),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: UiHelper.customTextArea("Enter facility")),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: UiHelper.AppButtons(() {}, "Continue"))
          ],
        ),
      ),
    );
  }
}
