import 'package:flutter/material.dart';
import 'package:trackcy/screens/Homepage.dart';
// import 'package:trackcy/screens/intro.dart';

class Intro3 extends StatelessWidget {
  const Intro3({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                width: 250, // Adjust the width as needed
                height: 250, // Adjust the height as needed
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFF756EF3), // Change the color as needed
                ),
                child: Image.asset("lib/images/mansherehere.png"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 90, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Task Management",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff756EF3))),
                Text("Manage your",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
                Text("Tasks Quickly For",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
                Text("Results.",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Stack(
                  children: [
                    Image.asset(
                      "lib/images/boxlast.png",
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) =>const Screen1 ()));
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}