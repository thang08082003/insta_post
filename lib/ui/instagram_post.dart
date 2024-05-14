import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/images/instagram.png",
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
    );
  }
}
