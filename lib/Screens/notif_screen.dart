import 'package:car_pooling_and_ride_sharing_app/widgets/decor_widget.dart';
import 'package:flutter/material.dart';

class NotifionsScreen extends StatefulWidget {
  const NotifionsScreen({super.key});

  @override
  State<NotifionsScreen> createState() => _NotifionsScreenState();
}

class _NotifionsScreenState extends State<NotifionsScreen> {
  List<String> notifications = [
    'Accept ride request',
    'Add money',
    'Accept request',
  ];

  List<String> sec_text = [
    'Congratulation jecob johan accept your ride request',
    'Congratulation \$10.00 successfully added in your wallet.',
    'Congratulation jecob johan accept your ride request'
  ];

  void _removeNotification(int index) {
    setState(() {
      notifications.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: UiHelper.color,
            ),
          ),
          backgroundColor: UiHelper.appColor,
          title: Text(
            'Notification',
            style: TextStyle(color: UiHelper.color),
          ),
        ),
        body: ListView.separated(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(notifications[index]),
              onDismissed: (direction) {
                _removeNotification(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Notification dismissed'),
                  ),
                );
              },
              background: Container(color: UiHelper.appColor),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: UiHelper.color,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black.withOpacity(0.1))),
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    color: Color.fromRGBO(224, 170, 79, 1),
                  ),
                ),
                title: Text(
                  notifications[index],
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontSize: 20),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sec_text[index],
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Text("2min ago")
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.grey,
              thickness: 0.8,
            );
          },
        ),
      ),
    );
  }
}
