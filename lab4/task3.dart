import 'package:flutter/material.dart';

void main() {
  runApp(MyListViewApp());
}

class MyListViewApp extends StatelessWidget {
  final List<Map<String, String>> items = List.generate(
    20,
    (index) => {
      "title": "Item ${index + 1}",
      "subtitle": "This is the description for item ${index + 1}",
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scrollable ListView'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.label, color: Colors.blue),
                title: Text(items[index]['title']!),
                subtitle: Text(items[index]['subtitle']!),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Action when tapped
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Tapped on ${items[index]['title']}'),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
