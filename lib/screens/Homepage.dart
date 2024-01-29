import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:trackcy/screens/EditProfile.dart';
import 'package:trackcy/screens/Message.dart';
import 'package:trackcy/screens/addtask.dart';
import 'package:trackcy/screens/login.dart';
// import 'package:hackathon_track_app/screens/add_task.dart';
// import 'package:hackathon_track_app/screens/message_screen.dart';
// import 'package:hackathon_track_app/screens/profile_screen.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

List textNames = [
  "Home",
  "Tasks",
  "Add",
  "Message",
  "Profile",
  // "Profile",
];

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 20.0,
            ),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.white,
              color: Colors.white,
              onTabChange: (index) {
                if (index == 2) {
                  // If "Add" icon is clicked
                  showAddBottomSheet(context);
                }
              },
              padding: const EdgeInsets.all(16),
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const Screen1()));
                  },
                  icon: Icons.home,
                  text: textNames[0],
                  iconColor: Colors.black,
                ),
                GButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const AddTask()));
                  },
                  icon: Icons.task_alt_outlined,
                  iconColor: Colors.black,
                  text: textNames[1],
                ),
                GButton(
                  icon: Icons.add_circle,
                  iconColor: Colors.black,
                  text: textNames[2],
                  iconSize: 30,
                ),
                GButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const MessageScreen()));
                  },
                  iconColor: Colors.black,
                  icon: Icons.message,
                  text: textNames[3],
                ),
                GButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => EditProfilePage()));
                  },
                  iconColor: Colors.black,
                  icon: Icons.person,
                  text: textNames[4],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const LoginSignupPage()));
                      },
                      child: const Icon(
                        Icons.category_outlined,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      "Friday,26",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 15),
                    const Icon(Icons.notifications_none),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's Make A",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Habits Together",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: 200,
                      width: 320,
                      decoration: BoxDecoration(
                          color: const Color(0xff756EF3),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Application Design",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Design UI kit",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "lib/images/rightperson.png",
                                  height: 50,
                                ),
                                Image.asset(
                                  "lib/images/righttt.png",
                                  height: 50,
                                ),
                                Image.asset(
                                  "lib/images/leftperson.png",
                                  height: 50,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Progress",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        color: Colors.white,
                                        height: 5,
                                        width: 80),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: 200,
                      width: 320,
                      decoration: BoxDecoration(
                          color: const Color(0xff756EF3),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Application Design",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Design UI kit",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "lib/images/rightperson.png",
                                  height: 50,
                                ),
                                Image.asset(
                                  "lib/images/righttt.png",
                                  height: 50,
                                ),
                                Image.asset(
                                  "lib/images/leftperson.png",
                                  height: 50,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Progress",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        color: Colors.white,
                                        height: 5,
                                        width: 80),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "In Progress",
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 208, 193, 193)),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Productivity App",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Create Detail Booking",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "2 min ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 208, 193, 193)),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Banking Mobile App",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Revision Home Page",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "5 min ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 208, 193, 193)),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Online",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Working On Landing Page",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "7 min ago",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void showAddBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildAddTaskContainer("Create Task"),
              buildAddTaskContainer("Create Project"),
              buildAddTaskContainer("Create Team"),
              buildAddTaskContainer("Create Event"),
            ],
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: Colors.white,
          ),
        );
      },
    );
  }

  Widget buildAddTaskContainer(String title) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
