import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    final String itemId = args?['id'] ?? 'ไม่มี ID';
    final String pageTitle = args?['title'] ?? 'รายละเอียด';

    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ได้รับ: $itemId'),
            Text('ได้รับ: $pageTitle'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'ข้อมูลจาก Detail_screen');
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}