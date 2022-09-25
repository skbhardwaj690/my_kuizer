import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class CustomAlertDialogExit extends StatelessWidget {
  BuildContext context;
  CustomAlertDialogExit({Key? key, required this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Image(
            image: AssetImage("images/kahoot_join.jpg"),
            width: 35.0,
            height: 35.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 17.0),
            child: Text(
              "Kuizer?",
              style: TextStyle(
                fontFamily: 'Graduate',
                fontSize: 30.0,
                color: Color.fromARGB(239, 90, 4, 129),
              ),
            ),
          ),
        ],
      ),
      content: SizedBox(
        width: 160.0,
        height: 170.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Image(
                image: AssetImage("images/sad1_emoji.png"),
                width: 120.0,
                height: 110.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Do you really want to Exit?"),
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("No"),
        ),
        ElevatedButton(
          onPressed: () {
            SystemNavigator.pop();
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}
