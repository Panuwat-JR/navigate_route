import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: Text("Detail Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item id: ${args["itemID"]}'),
            Text('Detail : ${args["mesages"]}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'item1 detail returned. ');
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}