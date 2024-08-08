import 'package:car_pooling_and_ride_sharing_app/Screens/firstScreen.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/fourthScreen.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/secondScreen.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/thirdScreen.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: UiHelper.appColor));
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Car Pooling',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          useMaterial3: true,
          scaffoldBackgroundColor: Color.fromRGBO(244, 244, 244, 1.0),
        ),
        home: PageView(
          children: const [
            firstScreen(),
            SecondScreen(),
            ThirdScreen(),
            FourthScreen()
          ],
        ));
  }
}
