// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(38, 77, 102, 1),
        body: Container(
          color: Color.fromRGBO(38, 77, 102, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Center(child: Image.asset("images/1.PNG")),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Go Pooler",
                style: TextStyle(
                    color: Color.fromRGBO(240, 239, 238, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              )
            ],
          ),
        ));
  }
}
