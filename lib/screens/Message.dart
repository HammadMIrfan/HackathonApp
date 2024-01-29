import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 60)),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
               const Text(
                 "Messages",
                 textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
               ),
              // const Expanded(child: Icon(Icons.add)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
           Padding(
  padding: const EdgeInsets.all(10.0),
  child: TextField(
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      hintText: 'Search',
      prefixIcon: const Icon(Icons.search),
    ),
  ),
),

          const SizedBox(
            height: 20,
          ),
          buildChatTile("Jehny Alexinder", "Active Now"),
          buildChatTile("John Doe", "Online"),
          buildChatTile("Jane Smith", "Away"),
          buildChatTile("Emily Johnson", "Active Now"),
          buildChatTile("Michael Williams", "Offline"),
          buildChatTile("Sarah Brown", "Active Now"),
        ],
      ),
    );
  }

  Widget buildChatTile(String name, String status) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage(
              "lib/images/leftperson.png",
            ),
          ),
          title: Text(name),
          subtitle: Text(status),
          trailing: const Icon(Icons.camera_alt),
        ),
        const Divider(
          height: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
