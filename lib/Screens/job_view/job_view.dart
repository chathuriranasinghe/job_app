import 'package:flutter/material.dart';
import 'package:job_app/Models/job_model.dart';

class JobViewPage extends StatefulWidget {
  const JobViewPage({super.key, required this.model});

  final JobModel model;

  @override
  State<JobViewPage> createState() => _JobViewPageState();
}

class _JobViewPageState extends State<JobViewPage> {
  final tabButtons = ["Description", "Company", "Reviews"];
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.debt.org/wp-content/uploads/2020/06/shutterstock_682454728-1.jpg"))),
                  child: Stack(
                    children: [
                      SafeArea(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.model.title,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              widget.model.salary,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                widget.model.type,
                                style: TextStyle(color: Colors.grey.shade300),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(widget.model.logo),
                              radius: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.model.companyName,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  widget.model.city,
                                  style: TextStyle(
                                      color: Colors.grey.shade200,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              widget.model.time,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: tabButtons.map((e) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              tabIndex = tabButtons.indexOf(e);
                            });
                          },
                          child: Chip(
                              backgroundColor: tabIndex == tabButtons.indexOf(e)
                                  ? Colors.black
                                  : Colors.white,
                              label: Text(
                                e,
                                style: TextStyle(
                                    color: tabIndex == tabButtons.indexOf(e)
                                        ? Colors.white
                                        : Colors.black),
                              )));
                    }).toList()),
                tabIndex == 0
                    ? Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          height: 190,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                              "A job application is a crucial document that showcases a candidate's qualifications, experiences, and skills to potential employers. It typically includes a resume detailing work history, education, and certifications, along with a cover letter that highlights the applicant's motivations and suitability for the role. Job applications are tailored to specific job descriptions, demonstrating how the candidate aligns with the company's values and requirements."),
                        ),
                      )
                    : tabIndex == 1
                        ? Text("Company Details")
                        : Text("Review Details")
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: size.width,
                  height: 75,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: size.width * 0.6,
                        height: 50,
                        child: Center(
                            child: Text(
                          "Apply Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
