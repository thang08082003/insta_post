import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'story_list.dart';
import 'post_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "assets/images/avt1.png",
    "assets/images/avt2.png",
    "assets/images/avt3.png",
    "assets/images/avt4.png",
    "assets/images/avt5.png",
    "assets/images/avt6.png",
    "assets/images/avt7.png",
    "assets/images/avt8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoryList(profileImages: profileImages),
            PostList(profileImages: profileImages),
          ],
        ),
      ),
    );
  }
}
