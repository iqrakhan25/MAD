import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab #3',
      debugShowCheckedModeBanner: false,
      home: const Lab3Screen(),
    );
  }
}

class Lab3Screen extends StatelessWidget {
  const Lab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No AppBar to mimic the exact look of the sample image
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            
            // Title "LAB #3"
            const Text(
              'LAB #3',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Red container with an oval/rounded rectangle that shows leaves
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.red,
              child: Center(
                child: Container(
                  width: 120,
                  height: 900,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/leaves.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Overlapping rectangles with vertical numbers
            Stack(
              alignment: Alignment.center,
              children: [
                // Blue background rectangle
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                // Narrow red rectangle with numbers
                Positioned(
                  top: 0,
                  child: Container(
                    width: 60,
                    height: 300,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('1', style: TextStyle(color: Colors.white)),
                        Text('2', style: TextStyle(color: Colors.white)),
                        Text('3', style: TextStyle(color: Colors.white)),
                        Text('4', style: TextStyle(color: Colors.white)),
                        Text('5', style: TextStyle(color: Colors.white)),
                        Text('6', style: TextStyle(color: Colors.white)),
                        Text('7', style: TextStyle(color: Colors.white)),
                        Text('8', style: TextStyle(color: Colors.white)),
                        Text('9', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Instructional text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'PRACTICE MORE THEN THIS. IT WILL HELP YOU TO DESIGN '
                'COMPLEX MOBILE APP DESIGN',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),

            // Green container with leading, trailing text, and an image in the middle
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'LEADING',
                    style: TextStyle(color: Colors.white),
                  ),
                  // Circular image in the center
                  ClipOval(
                    child: Image.asset(
                      'assets/forest.jpg',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'TRAILING',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
