import 'package:flutter/material.dart';
import 'package:navigation_root/screens/detail_screens.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.pushNamed(
              context,
              DetailScreen.routeName,
              arguments: {"itemID ": "item-456", "messages": "item1 detail"},
            );
            print("Result from Detail Screen: $result");
          },
          child: Text("Go to Details Screen"),
        ),
      ),
    );
  }
}