import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List FAQsList = [
      "How to find ride?",
      "How to add money in wallet?",
      "How to chat with rider?",
      "How to send money in bank?"
    ];
    return Scaffold(
      appBar: UiHelper.CustomAppBar("FAQs", () {
        Navigator.pop(context);
      }),
      body: ListView.separated(
        itemCount: FAQsList.length,
        separatorBuilder: (context, index) =>
            Divider(height: 1, color: Colors.grey[400]),
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            title: Text(FAQsList[index],
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            subtitle: const Text(
              "Lorem ipsum dolor sit amet, consecte adipiscindf elitj. Eu scelerisque neque nevesti bulumaugued enullalkil quis mauris. solliciegesta pellentesqueg adipiscing. Leoaliquam, aliquam novalaoreethg",
              textAlign: TextAlign.justify,
            ),
          );
        },
      ),
    );
  }
}
