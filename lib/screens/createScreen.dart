import 'package:flutter/material.dart';

class CreateTeam extends StatelessWidget {
  const CreateTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
               const Text(
                 "Create Team",
                 textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
               ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff756EF3),
                  ),
                  shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  "lib/images/boxlast.png",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Text(
                  "Upload Logo File",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Your logo will publish here",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 260),
                  child: Text(
                    "Team Name",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Team Align",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 240),
              child: Text(
                "Team Members",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 25),
              child: Row(
                children: [
                  Image.asset(
                    "lib/images/leftperson.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "lib/images/righttt.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "lib/images/leftperson.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "lib/images/righttt.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff756EF3),
                        ),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: Color(0xff756EF3),
                    ),
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Type",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "Private",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Public",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Secret",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 140,
            ),
            Container(
              width: 140,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 20, 20, 112),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Create Team",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}