import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Good Morning Chathuri',
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              const SizedBox(height: 10),
              const Text(
                'Find Your \nCreative Job',
                style: TextStyle(
                    fontSize: 32, height: 0.9, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  width: size.width * 0.6,
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search for Jobs',
                    ),
                  )),
              /*Row(
                children: [
                  const TextField(),
                  Container(width: 50, height: 50,)
                ],
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
