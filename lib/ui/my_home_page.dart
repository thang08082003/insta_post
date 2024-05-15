import 'package:flutter/material.dart';
import 'package:insta/ui/home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/home.png",
                width: 25,
                height: 25,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/search.png",
                width: 25,
                height: 25,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/more.png",
                width: 25,
                height: 25,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/like.png",
                width: 25,
                height: 25,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/user.png",
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
