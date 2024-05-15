import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/camera.png",
              height: 25.0,
              width: 25.0,
            ),
          ),
          title: Image.asset(
            "assets/images/instagram_logo.png",
            height: 50.0,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/igtv.png",
                height: 25.0,
                width: 25.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/send.png",
                height: 25.0,
                width: 25.0,
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
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
              ),
              Column(
                children: List.generate(
                    8,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: const AssetImage(
                                      "assets/images/stories.png",
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
                                height: 200,
                                width: 200,
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
                                Spacer(),
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
                                              "The game in Japan was amazing and i want to share some photos",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
              )
            ],
          ),
        ));
  }
}
