import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Bar"),
          // backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SpinCircleBottomBarHolder(
          child: Container(
            color: Colors.orangeAccent.shade100,
            child: const Center(
              child: Text("Spin Circle Bottom Bar!"),
            ),
          ),
          bottomNavigationBar: SCBottomBarDetails(
              iconTheme: const IconThemeData(color: Colors.black45),
              activeIconTheme:
                  const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
              backgroundColor: Colors.white,
              titleStyle: const TextStyle(color: Colors.black45, fontSize: 12),
              activeTitleStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              actionButtonDetails: SCActionButtonDetails(
                  color: Colors.redAccent,
                  icon: const Icon(
                    Icons.expand_less,
                    color: Colors.white,
                  ),
                  elevation: 2),
              elevation: 2.0,
              circleColors: [Colors.red, Colors.orange, Colors.redAccent],
              circleItems: [
                //Suggested Count: 3
                SCItem(icon: const Icon(Icons.add), onPressed: () {}),
                SCItem(icon: const Icon(Icons.print), onPressed: () {}),
                SCItem(icon: const Icon(Icons.map), onPressed: () {}),
              ],
              items: [
                // Suggested count : 4
                SCBottomBarItem(
                    icon: Icons.verified_user, title: "User", onPressed: () {}),
                SCBottomBarItem(
                    icon: Icons.supervised_user_circle,
                    title: "Details",
                    onPressed: () {}),
                SCBottomBarItem(
                    icon: Icons.notifications,
                    title: "Notifications",
                    onPressed: () {}),
                SCBottomBarItem(
                    icon: Icons.details, title: "New Data", onPressed: () {}),
              ],
              bnbHeight: 80 // Suggested Height 80

              ),
        ));
  }
}
