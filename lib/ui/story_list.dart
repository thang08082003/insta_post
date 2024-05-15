import 'package:flutter/material.dart';

class StoryList extends StatelessWidget {
  final List<String> profileImages;

  const StoryList({required this.profileImages, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          profileImages.length,
          (index) => Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: const AssetImage(
                    "assets/images/stories.png",
                  ),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage(
                      profileImages[index],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Profile_Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
