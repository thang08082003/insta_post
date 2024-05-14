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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
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
