import 'package:flutter/material.dart';
import 'package:trackcy/screens/EditProfile.dart';
import 'package:trackcy/screens/login.dart';
import 'package:trackcy/screens/signup.dart';
// import 'edit_profile_page.dart'; // Import your Edit Profile page
// import 'login_page.dart'; // Import your Login page
// import 'signup_page.dart'; // Import your Signup page

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notificationsEnabled = true;
  bool darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              const Text(
                'Notifications',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Enabled',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Switch(
                      value: notificationsEnabled,
                      onChanged: (value) {
                        setState(() {
                          notificationsEnabled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Dark Mode',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Enabled',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Switch(
                      value: darkModeEnabled,
                      onChanged: (value) {
                        setState(() {
                          darkModeEnabled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              buildListItem('Edit Profile', Icons.person, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              }),
              buildListItem('Login', Icons.login, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginSignupPage()),
                );
              }),
              buildListItem('Signup', Icons.person_add, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
                );
              }),
              buildListItem('About Application', Icons.settings, () {
                // Navigate to Settings page if needed
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListItem(String title, IconData icon, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20.0),
            ),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
