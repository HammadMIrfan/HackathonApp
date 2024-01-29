import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Row(
            children: [
             
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              const Center(
                child: Text(
                  "Add Task",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250),
                child: Text(
                  "Task Name",
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
                    "Mobile Application Design",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 230),
                child: Text(
                  "Team Members",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 25),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 300),
                    child: Text(
                      "Date",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 210, 197, 197)),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "NOVEMBER 01,2021",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text(
                      "Start Time",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "End Time",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 60,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 210, 197, 197)),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          "9:30 am",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 210, 197, 197)),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "3:30 pm",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Board",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 210, 197, 197)),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Urgent",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 210, 197, 197)),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          "Running",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 210, 197, 197)),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          "Urgent",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: 240,
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 159, 18, 215),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text(
                "Save",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}