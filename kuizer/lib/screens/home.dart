import 'package:flutter/material.dart';
import 'package:kuizer/services/auth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
              child: Container(
                constraints: const BoxConstraints.expand(
                  width: 380,
                  height: 150,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(235, 8, 134, 13),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Positioned(
                      bottom: 25,
                      right: 20,
                      child: Image(
                        width: 100,
                        height: 100,
                        image: AssetImage('images/kahoot_join.jpg'),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 70,
                      child: Text(
                        'Create your first\nkizoo?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 15,
                      child: Text(
                        'Create or host a kizoo and\nplay it with friends',
                        style: TextStyle(
                          color: Color.fromARGB(234, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.map_outlined,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Discover',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Text('See All'),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: Container(
                      constraints: const BoxConstraints.expand(
                        width: 380,
                        height: 150,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(235, 8, 134, 13),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Stack(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Positioned(
                            bottom: 25,
                            right: 20,
                            child: Image(
                              width: 100,
                              height: 100,
                              image: AssetImage('images/kahoot_join.jpg'),
                            ),
                          ),
                          const Positioned(
                            left: 20,
                            bottom: 70,
                            child: Text(
                              'Create your first\nkizoo?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 20,
                            bottom: 15,
                            child: Text(
                              'Create or host a kizoo and\nplay it with friends',
                              style: TextStyle(
                                color: Color.fromARGB(234, 255, 255, 255),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      constraints: const BoxConstraints.expand(
                        width: 380,
                        height: 150,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(235, 8, 134, 13),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Stack(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Positioned(
                            bottom: 25,
                            right: 20,
                            child: Image(
                              width: 100,
                              height: 100,
                              image: AssetImage('images/kahoot_join.jpg'),
                            ),
                          ),
                          const Positioned(
                            left: 20,
                            bottom: 70,
                            child: Text(
                              'Create your first\nkizoo?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 20,
                            bottom: 15,
                            child: Text(
                              'Create or host a kizoo and\nplay it with friends',
                              style: TextStyle(
                                color: Color.fromARGB(234, 255, 255, 255),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Container(
                      constraints: const BoxConstraints.expand(
                        width: 380,
                        height: 150,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(235, 8, 134, 13),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Stack(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Positioned(
                            bottom: 25,
                            right: 20,
                            child: Image(
                              width: 100,
                              height: 100,
                              image: AssetImage('images/kahoot_join.jpg'),
                            ),
                          ),
                          const Positioned(
                            left: 20,
                            bottom: 70,
                            child: Text(
                              'Create your first\nkizoo?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 20,
                            bottom: 15,
                            child: Text(
                              'Create or host a kizoo and\nplay it with friends',
                              style: TextStyle(
                                color: Color.fromARGB(234, 255, 255, 255),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
              child: Container(
                constraints: const BoxConstraints.expand(
                  width: 380,
                  height: 150,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(235, 8, 134, 13),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Positioned(
                      bottom: 25,
                      right: 20,
                      child: Image(
                        width: 100,
                        height: 100,
                        image: AssetImage('images/kahoot_join.jpg'),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 70,
                      child: Text(
                        'Create your first\nkizoo?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 15,
                      child: Text(
                        'Create or host a kizoo and\nplay it with friends',
                        style: TextStyle(
                          color: Color.fromARGB(234, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
              child: Container(
                constraints: const BoxConstraints.expand(
                  width: 380,
                  height: 150,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(235, 8, 134, 13),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Positioned(
                      bottom: 25,
                      right: 20,
                      child: Image(
                        width: 100,
                        height: 100,
                        image: AssetImage('images/kahoot_join.jpg'),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 70,
                      child: Text(
                        'Create your first\nkizoo?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 15,
                      child: Text(
                        'Create or host a kizoo and\nplay it with friends',
                        style: TextStyle(
                          color: Color.fromARGB(234, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
              child: Container(
                constraints: const BoxConstraints.expand(
                  width: 380,
                  height: 150,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(235, 8, 134, 13),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Stack(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Positioned(
                      bottom: 25,
                      right: 20,
                      child: Image(
                        width: 100,
                        height: 100,
                        image: AssetImage('images/kahoot_join.jpg'),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 70,
                      child: Text(
                        'Create your first\nkizoo?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 15,
                      child: Text(
                        'Create or host a kizoo and\nplay it with friends',
                        style: TextStyle(
                          color: Color.fromARGB(234, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar HomeAppBar() {
    return AppBar(
      title: const Text(
        'Kuizer?',
        style: TextStyle(
            fontFamily: 'Graduate',
            fontSize: 30.0,
            color: Color.fromARGB(239, 90, 4, 129)),
      ),
      leading: IconButton(
        icon: const CircleAvatar(
          backgroundColor: Color.fromARGB(248, 114, 106, 106),
          foregroundColor: Colors.white,
          child: Icon(Icons.person),
        ),
        color: Colors.black,
        onPressed: () {
          AuthService().signOut();
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          color: Colors.black,
          onPressed: () {},
        ),
      ],
      elevation: 1.5,
      centerTitle: true,
      backgroundColor: Colors.white,
      toolbarHeight: 65.0,
      leadingWidth: 43.0,
    );
  }
}
