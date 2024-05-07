import 'package:flutter/material.dart';
import 'package:job_app/Screens/homepage/widgets/category.dart';
import 'package:job_app/Screens/homepage/widgets/greetings.dart';
import 'package:job_app/Screens/homepage/widgets/popular_row.dart';
import 'package:job_app/Services/get_data.dart';

import 'widgets/app_bar.dart';
import 'widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 10,
                ),
                Greetings(),
                const SizedBox(height: 10),
                CustomSearchBar(size: size),
                const SizedBox(height: 15),
                CategoryBar(title: 'Recent Jobs'),
                const SizedBox(
                  height: 10,
                ),
                PopularRow(data: data, size: size),
                const SizedBox(height: 10),
                CategoryBar(
                  title: 'Popular Jobs',
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                    children: List.generate(data.getJobData().length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(data.getJobData()[index].logo),
                          radius: 25,
                        ),
                        title: Text(data.getJobData()[index].title),
                        subtitle: Text(
                          "${data.getJobData()[index].companyName} - ${data.getJobData()[index].type}",
                          style: const TextStyle(color: Colors.grey),
                        ),
                        trailing: Text(data.getJobData()[index].time),
                      ),
                    ),
                  );
                })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
