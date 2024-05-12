import 'package:flutter/material.dart';

class InstagramPost extends StatelessWidget {
  const InstagramPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          buildHeaderRow(),

          const SizedBox(height: 16.0),

          // Image
          Image.asset('assets/images/abc.jpg', fit: BoxFit.cover),

          const SizedBox(height: 16.0),

          // Caption
          const Text(
            'The game in Japan was amazing and I want to share some photos.',
            style: TextStyle(fontSize: 14.0),
          ),

          const SizedBox(height: 16.0),

          // Action buttons
          buildActionButtons(),
        ],
      ),
    );
  }

  Row buildHeaderRow() {
    return const Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/download.jpg'),
          radius: 24.0,
        ),
        SizedBox(width: 16.0),
        Text(
          'joshua_',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: null,
        ),
      ],
    );
  }

  Row buildActionButtons() {
    return const Row(
      children: [
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.comment),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.share),
          onPressed: null,
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.bookmark),
          onPressed: null,
        ),
      ],
    );
  }
}
