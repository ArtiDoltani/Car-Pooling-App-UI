import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: UiHelper.CustomAppBar("Add vehicle", () {
        Navigator.pop(context);
      }),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 17.0, vertical: 20),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(231, 231, 231, 0.5),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt_outlined,
                              size: 30, color: Colors.black45),
                        ),
                        const Text(
                          "Add vehicle image",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Vehicle name",
                    style: UiHelper.vehicleTitleStyle,
                  ),
                ),
                UiHelper.customTextField("Enter vehicle name"),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Vehicle type",
                    style: UiHelper.vehicleTitleStyle,
                  ),
                ),
                UiHelper.customTextField("Enter vehicle type"),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Vehicle reg. number",
                    style: UiHelper.vehicleTitleStyle,
                  ),
                ),
                UiHelper.customTextField("Enter vehicle reg. number"),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Vehicle colour",
                    style: UiHelper.vehicleTitleStyle,
                  ),
                ),
                UiHelper.customTextField("Enter vehicle colour"),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Seat offering",
                    style: UiHelper.vehicleTitleStyle,
                  ),
                ),
                UiHelper.customTextField("Enter available seat"),
                Text(
                  "Facilities(i.e. AC, music)",
                  style: UiHelper.vehicleTitleStyle,
                ),
                UiHelper.customTextField("Enter facilities"),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.75),
            child: Container(
              color: const Color.fromRGBO(244, 244, 244, 1.0),
              width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height / 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [UiHelper.AppButtons(() {}, "Add")],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
