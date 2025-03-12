import 'package:flutter/material.dart';

void main() {
  runApp(WidgetApp());
}

class WidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      title: 'Widget App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget App'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Displaying an image at the top
              Image.network(
                'https://via.placeholder.com/400x200.png?text=Flutter+Image', // Valid placeholder image
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              // Row with icons and text
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.thumb_up, size: 40, color: Colors.blue),
                        Text('Like', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.comment, size: 40, color: Colors.green),
                        Text('Comment', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share, size: 40, color: Colors.red),
                        Text('Share', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              // Elevated button at the bottom
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Button click action
                    print('ElevatedButton Pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Press Me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
