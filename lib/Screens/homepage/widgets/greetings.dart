import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  const Greetings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Good Morning Chathuri',
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        const SizedBox(height: 10),
        const Text(
          'Find Your \nCreative Job',
          style:
              TextStyle(fontSize: 32, height: 0.9, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
