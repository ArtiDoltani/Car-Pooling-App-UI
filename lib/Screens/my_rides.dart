import 'package:car_pooling_and_ride_sharing_app/Screens/my_rides_detail.dart';
import 'package:car_pooling_and_ride_sharing_app/models/myrides.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class MyRides extends StatefulWidget {
  const MyRides({super.key});

  @override
  State<MyRides> createState() => _MyRidesState();
}

class _MyRidesState extends State<MyRides> {
  void _removeRide(int index) {
    setState(() {
      rides.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: UiHelper.color,
        automaticallyImplyLeading: false,
        backgroundColor: UiHelper.appColor,
        title: const Center(child: Text("My Rides")),
      ),
      body: rides.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/emp_list.PNG",
                    height: 80,
                    fit: BoxFit.fill,
                  ),
                  const Text(
                    "Empty ride list",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: rides.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: DecoratedBox(
                    decoration: UiHelper.customBoxDecoration(),
                    child: ListTile(
                      title: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              rides[index].img,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.green.shade600,
                                      ),
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
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.red.shade600,
                                      ),
                                      const Expanded(
                                          child: Text(
                                        "Pune, 2464 Royal Ln. Mesa",
                                        style: TextStyle(fontSize: 15),
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyRidesDetail(
                                      ride: rides[index],
                                      onCancel: () {
                                        _removeRide(index);
                                      },
                                    )));
                      },
                    ),
                  ),
                );
              }),
    );
  }
}
