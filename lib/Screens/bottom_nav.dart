// ignore_for_file: camel_case_types
import 'package:car_pooling_and_ride_sharing_app/Screens/home_screen.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/my_rides.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/profile.dart';
import 'package:car_pooling_and_ride_sharing_app/Screens/wallet.dart';
import 'package:flutter/material.dart';

class Botm_nav_Screen extends StatefulWidget {
  const Botm_nav_Screen({super.key});

  @override
  State<Botm_nav_Screen> createState() => _Botm_nav_ScreenState();
}

class _Botm_nav_ScreenState extends State<Botm_nav_Screen> {
  int currentIndex = 0;
  final tabs = [
    const HomeScreen(),
    const MyRides(),
    WalletScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromRGBO(38, 77, 102, 1),
          selectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(38, 77, 102, 1),
          ),
          unselectedLabelStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          iconSize: 30,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.turn_sharp_left_outlined,
              ),
              label: 'My rides',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
    );
  }
}
