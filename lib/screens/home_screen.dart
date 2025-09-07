import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:navigate_route/screens/third_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //detail_screen
            ElevatedButton(
              onPressed: () async {
                final msg = await Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    // ส่ง arguments เป็น Map
                    'id': '001',
                    'title': 'ข้อมูลจาก Home',
                  },
                );
                if (msg != null && msg is String) {
                  print(msg);
                }
              },
              child: const Text('Go to Detail Screen'),
            ),
            SizedBox(height: 10),
            //third screen
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  ThirdScreen.routeName,
                  arguments: {
                    // ส่ง arguments เป็น Map
                    'id': '002',
                    'title': 'ข้อมูลจาก Home',
                  },
                );
                if (result != null && result is String) {
                  print(result);
                }
              },
              child: const Text('Go to Third Screen'),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}