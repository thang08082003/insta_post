import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram Post'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage(
                        'assets/images/download.jpg'), // Replace with your asset path
                    radius: 24.0,
                  ),
                  const SizedBox(width: 16.0),
                  Text(
                    'joshua_',
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: null,
                  ),
                ],
              ),

              const SizedBox(height: 16.0),

              // Image
              Image.asset(
                'assets/images/abc.jpg', // Replace with your asset path
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 16.0),

              // Caption

              const SizedBox(height: 16.0),

              // Action buttons
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: const Icon(Icons.comment),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: null,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.bookmark),
                    onPressed: null,
                  ),
                ],
              ),
              Text(
                'The game in Japan was amazing and I want to share some photos.',
                style: const TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
