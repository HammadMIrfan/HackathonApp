import 'package:flutter/material.dart';
import 'package:trackcy/screens/Intro1.dart';
// import 'package:trackcy/screens/~login.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/images/SplashImage.png', // Corrected asset path
              fit: BoxFit.cover, // Ensures the image covers the entire area
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40), // Apply border radius to top left
                  topRight: Radius.circular(40), // Apply border radius to top right
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text(
                    "Taskcy", // Added heading
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,

                      fontFamily: 'Poller One',
                      // fontStyle: FontStyle.italic
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Building Better Workplaces", // Added heading
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Product Sans',
                      
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Create a unique emotional story that describes better than words",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Intro1()),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color.fromARGB(255, 224, 132, 253), Color.fromARGB(255, 118, 32, 224)], // Purple gradient for button
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.only(
                        left: 80,
                        right: 80,
                        top: 25,
                        bottom: 20,
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
