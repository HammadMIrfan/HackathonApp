import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15.0),
                GestureDetector(
                  onTap: () {
                    // Implement image change logic here
                  },
                  child: const Stack(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('lib/images/right2person.png'), // Placeholder image
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    initialValue: 'John Doe',
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Name',
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    initialValue: 'john.doe@example.com',
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    initialValue: '30',
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Age',
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    initialValue: 'Male',
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Gender',
                    ),
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
