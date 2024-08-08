import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiHelper {
  static Color color = const Color.fromRGBO(255, 255, 255, 1);
  static Color appColor = const Color.fromRGBO(38, 77, 102, 1);
  static Color orangeColor = const Color.fromRGBO(224, 170, 79, 1);
  static var styleFrom = ElevatedButton.styleFrom(
    backgroundColor: UiHelper.color,
    surfaceTintColor: Colors.white,
    shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black.withOpacity(0.1)),
        borderRadius: BorderRadius.circular(8)),
  );
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
    Color? bgcolor = const Color.fromRGBO(224, 170, 79, 1),
  ]) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(10),
        ),
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

  // Custom input textfield
  static customTextField(String hinttext, [IconData? icon]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: SizedBox(
        width: 385,
        height: 45,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            hintText: hinttext,
            // Conditional prefixIcon
            prefixIcon: icon != null ? Icon(icon) : null,
            prefixIconColor: Colors.black38,
            fillColor: const Color.fromRGBO(255, 255, 255, 1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            hintStyle: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            // Adjust prefix icon constraints
            prefixIconConstraints: icon != null
                ? const BoxConstraints()
                : const BoxConstraints(maxWidth: 0, maxHeight: 0),
          ),
        ),
      ),
    );
  }

  static CustomAppBar(String app_title, VoidCallback callback) {
    return AppBar(
      backgroundColor: appColor,
      foregroundColor: color,
      leading: IconButton(
        onPressed: callback,
        icon: Icon(Icons.arrow_back_ios, color: UiHelper.color, size: 16),
      ),
      title: Text(app_title),
    );
  }
}
