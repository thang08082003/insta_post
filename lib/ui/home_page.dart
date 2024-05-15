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
  final List<String> profileImages = [
    "assets/images/avt1.png",
    "assets/images/avt2.png",
    "assets/images/avt3.png",
    "assets/images/avt4.png",
    "assets/images/avt5.png",
    "assets/images/avt6.png",
    "assets/images/avt7.png",
    "assets/images/avt8.png",
  ];

  final List<Story> stories = [
    const Story(profileImage: "assets/images/avt1.png", usernames: ["user1"]),
    const Story(profileImage: "assets/images/avt2.png", usernames: ["user2"]),
    const Story(profileImage: "assets/images/avt3.png", usernames: ["user3"]),
    const Story(profileImage: "assets/images/avt4.png", usernames: ["user4"]),
    const Story(profileImage: "assets/images/avt5.png", usernames: ["user5"]),
    const Story(profileImage: "assets/images/avt6.png", usernames: ["user6"]),
    const Story(profileImage: "assets/images/avt7.png", usernames: ["user7"]),
    const Story(profileImage: "assets/images/avt8.png", usernames: ["user8"])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoryList(profileImages: profileImages, stories: stories),
            PostList(profileImages: profileImages),
          ],
        ),
      ),
    );
  }
}
