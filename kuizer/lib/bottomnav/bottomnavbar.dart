import 'package:flutter/material.dart';
import 'package:kuizer/alertexit.dart';
import 'package:kuizer/screens/create.dart';
import 'package:kuizer/screens/discover.dart';
import 'package:kuizer/screens/home.dart';
import 'package:kuizer/screens/setting.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Home(),
    const Discover(),
    const Create(),
    const Setting(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Home();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentTab == 0) {
          showDialog(
            context: context,
            builder: (dgcontext) {
              return CustomAlertDialogExit(
                context: dgcontext,
              );
            },
          );
        } else {
          setState(
            () {
              currentScreen = const Home();
              currentTab = 0;
            },
          );
        }

        return false;
      },
      child: Scaffold(
        body: PageStorage(bucket: bucket, child: currentScreen),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          onPressed: () {},
          child: const Image(
            image: AssetImage("images/kahoot_join.jpg"),
            width: 52.0,
            height: 50.0,
            fit: BoxFit.cover,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          //shape: const CircularNotchedRectangle(),
          //notchMargin: 10,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = const Home();
                        currentTab = 0;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0
                            ? const Color.fromARGB(239, 90, 4, 129)
                            : const Color.fromARGB(202, 94, 93, 93),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: currentTab == 0
                                ? const Color.fromARGB(239, 90, 4, 129)
                                : Colors.black),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = const Discover();
                        currentTab = 1;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.map_outlined,
                        color: currentTab == 1
                            ? const Color.fromARGB(239, 90, 4, 129)
                            : const Color.fromARGB(202, 94, 93, 93),
                      ),
                      Text(
                        "Discover",
                        style: TextStyle(
                            color: currentTab == 1
                                ? const Color.fromARGB(239, 90, 4, 129)
                                : Colors.black),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40.0,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  //padding: const EdgeInsets.only(top: 15.0),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.min,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.add),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0, right: 5.0),
                        child: Text(
                          "Join",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = const Create();
                        currentTab = 2;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        color: currentTab == 2
                            ? const Color.fromARGB(239, 90, 4, 129)
                            : const Color.fromARGB(202, 94, 93, 93),
                      ),
                      Text(
                        "Create",
                        style: TextStyle(
                            color: currentTab == 2
                                ? const Color.fromARGB(239, 90, 4, 129)
                                : Colors.black),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = const Setting();
                        currentTab = 3;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: currentTab == 3
                            ? const Color.fromARGB(239, 90, 4, 129)
                            : const Color.fromARGB(202, 94, 93, 93),
                      ),
                      Text(
                        "Setting",
                        style: TextStyle(
                            color: currentTab == 3
                                ? const Color.fromARGB(239, 90, 4, 129)
                                : Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
