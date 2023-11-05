import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          actions: [
            const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Dashboard Design",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Today Shared by - Unbox Digital",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 7.0,
                        percent: 0.85,
                        center: const Text(
                          "85%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: const Color(0xffc1ea93),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Team",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 50,
                          width: 90,
                          child: const Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 0,
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage:
                                      AssetImage("assets/profile_image.png"),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 15,
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage:
                                      AssetImage("assets/profile_image.png"),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 30,
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundImage:
                                      AssetImage("assets/profile_image.png"),
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  left: 45,
                                  child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xffff7547),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ))),
                            ],
                          ),
                        ),
                        const Text(
                          "Deadline",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.calendar_month),
                            Text(
                              "July 25,2021 - July 30,2021",
                              style: TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Project Progress",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Checkbox(
                      activeColor: const Color(0xff9297fe),
                      value: isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked1 = value ?? false;
                        });
                      },
                    ),
                  ),
                  const Text(
                    "Creat user flow",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Checkbox(
                      activeColor: const Color(0xff9297fe),
                      value: isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked2 = value ?? false;
                        });
                      },
                    ),
                  ),
                  const Text(
                    "Creat wireframe",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Checkbox(
                      activeColor: const Color(0xff9297fe),
                      value: isChecked3,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked3 = value ?? false;
                        });
                      },
                    ),
                  ),
                  const Text(
                    "Transform to visual design",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Project Overview",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Weekly",style: TextStyle(color: Colors.grey),),
                        Icon(Icons.keyboard_arrow_down,color: Colors.grey,)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
