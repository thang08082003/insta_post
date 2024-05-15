import 'package:flutter/material.dart';

class Story {
  final String profileImage;
  final List<String> usernames;

  const Story({required this.profileImage, required this.usernames});
}

class StoryList extends StatelessWidget {
  final List<Story> stories;

  const StoryList(
      {required this.stories, super.key, required List<String> profileImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) => StoryItem(story: stories[index]),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final Story story;

  const StoryItem({required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipOval(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/plus.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 5,
                top: 5,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(story.profileImage),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (String username in story.usernames)
                Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
