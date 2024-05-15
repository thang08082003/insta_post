import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
