import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  final List<String> profileImages;

  const PostList({required this.profileImages, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        profileImages.length,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: const AssetImage(
                      "assets/images/plus.png",
                    ),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage(
                        profileImages[index],
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Profile_Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                profileImages[index],
                fit: BoxFit.cover,
                height: 420,
                width: 450,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/like.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/chat.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/send.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/bookmark.png",
                    height: 25,
                    width: 25,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "Liked by "),
                        TextSpan(
                          text: "Profile Name ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "and "),
                        TextSpan(
                          text: "others ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Profile Name ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              "The game in Japan was amazing and I want to share some photos",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
