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
  static TextStyle vehicleTitleStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  // Custom box decoration
  static BoxDecoration customBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: UiHelper.color,
        border: Border.all(width: 1, color: Colors.black.withOpacity(0.1)));
  }

  // Custom Row
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
        height: 50,
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

  static CustomAppBar(String appTitle, VoidCallback callback) {
    return AppBar(
      leadingWidth: 30,
      backgroundColor: appColor,
      foregroundColor: color,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: IconButton(
          onPressed: callback,
          icon: Icon(Icons.arrow_back_ios, color: UiHelper.color, size: 16),
        ),
      ),
      title: Text(appTitle),
    );
  }

  // custom divider
  static customverticalDivider() {
    return const VerticalDivider(
      indent: 10,
      endIndent: 10,
      color: Colors.grey,
      thickness: 1,
    );
  }

  //

  static passengerSeat(String img, String name) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(img),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w400),
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
