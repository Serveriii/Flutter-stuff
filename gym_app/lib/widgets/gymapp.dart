import 'package:flutter/material.dart';

class GymApp extends StatefulWidget {
  const GymApp({Key? key}) : super(key: key);

  @override
  State<GymApp> createState() {
    return _GymAppState();
  }
}

class _GymAppState extends State<GymApp> {
  @override
  Widget build(BuildContext context) {
    Widget maincontent = const Center(
      child: Text('No workouts added!'),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gym App'),
      ),
      body: Column(
        children: [
          maincontent,
        ],
      ),
    );
  }
}
