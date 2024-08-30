import 'package:car_pooling_and_ride_sharing_app/Screens/credit_card.dart';
import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  List imgList = [
    "images/credit_card.png",
    "images/paypal.png",
    "images/G_pay.png",
    "images/visa.png"
  ];
  List titleList = ["Credit card", "Pay pal", "Google pay", "Visa"];
  String? payment_method;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiHelper.CustomAppBar("Payment method", () {
        Navigator.pop(context);
      }),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    leading: Image.asset(
                      imgList[index],
                      width: 50,
                    ),
                    title: Text(titleList[index],
                        style: const TextStyle(fontWeight: FontWeight.w500)),
                    trailing: Radio(
                        activeColor: const Color.fromRGBO(224, 170, 79, 1),
                        value: titleList[index],
                        groupValue: payment_method,
                        onChanged: (value) {
                          setState(() {
                            payment_method = value.toString();
                          });
                        }),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                itemCount: titleList.length),
          ),
          UiHelper.AppButtons(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CreditCard()));
          }, "Add amount (\$50.00)")
        ],
      ),
    );
  }
}
