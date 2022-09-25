import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {},
        ),
        title: const Text(
          'Create',
          style: TextStyle(
              fontFamily: 'Graduate',
              fontSize: 30.0,
              color: Color.fromARGB(239, 90, 4, 129)),
        ),
        elevation: 1.5,
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 65.0,
        leadingWidth: 43.0,

        /*shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          */
      ),
      body: const Center(
        child: Text.rich(
          TextSpan(
            text: 'My',
            children: [
              TextSpan(
                  text: 'Create',
                  style:
                      TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'App',
                  style: TextStyle(fontSize: 30.0, color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
