import 'package:flutter/material.dart';
import 'package:trackcy/screens/intro2.dart';
// import 'package:trackcy/screens/login.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 80),
            child: Column(
              children: [
                Image.asset("lib/images/right.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Image.asset("lib/images/rightperson.png"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 110, top: 50),
            child: Column(
              children: [
                Image.asset("lib/images/left.png"),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: Image.asset("lib/images/leftperson.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 40, right: 10),
            child: Column(
              children: [
                Image.asset("lib/images/right.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: Image.asset("lib/images/righttt.png"),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Task Management", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff756EF3))),
                Text("Let's create a", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                Text("space for your", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                Text("Workflows.", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
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
                    Image.asset("lib/images/boxlast.png", ),
                    Positioned(
                      bottom: 10,
                      right:10,
                      child: IconButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) =>const Intro2()));
                      // ignore: prefer_const_constructors
                      // ignore: prefer_const_constructors
                      }, icon: Icon(Icons.arrow_forward,color: Colors.white,size:30,)),
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

