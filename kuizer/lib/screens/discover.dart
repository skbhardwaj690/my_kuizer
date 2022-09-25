import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({
    Key? key,
  }) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
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
          'Discover',
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
                  text: 'Discover',
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
