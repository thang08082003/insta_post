import 'package:flutter/material.dart';
import 'package:insta/ui/instagram_post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram Post'),
        ),
        body: const InstagramPost(),
      ),
    );
  }
}
