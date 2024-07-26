import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiHelper {
  static Color color = const Color.fromRGBO(255, 255, 255, 1);
  static timing_row() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text("10:20",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w700, color: color)),
        ),
        Row(
          children: [
            Icon(Icons.wifi, color: color, size: 20),
            Icon(Icons.signal_cellular_alt, color: color, size: 20),
            Icon(Icons.battery_2_bar, color: color, size: 20),
          ],
        )
      ],
    );
  }

//  This is a reusable function
  static light_swip_container(double width, double height, Color color) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)));
  }
// AppButtons

  static AppButtons(
    VoidCallback voidCallback,
    String text, [
    double? height = 50,
    double? width = 350,
    Color? txtcolor = const Color.fromRGBO(255, 255, 255, 1),
    Color? bgcolor = const Color.fromRGBO(241, 163, 74, 1),
  ]) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(text,
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: txtcolor))),
        ),
      ),
    );
  }
}
