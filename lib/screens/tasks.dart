import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:thiran_ui/screens/details_page.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/profile_image.png"),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Project",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Ongoing",
                    ),
                    Tab(
                      text: "Completed",
                    ),
                  ],
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff9297fe),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: [
                        Card(
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "App Animation",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Today,Shared by - Unbox Digital",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Team",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                                          backgroundImage: AssetImage(
                                              "assets/profile_image.png"),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 15,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage(
                                              "assets/profile_image.png"),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 30,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage(
                                              "assets/profile_image.png"),
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          left: 45,
                                          child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  Color(0xffff7547),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              ))),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_month_outlined),
                                    Text(
                                      "June 15,2021 - June 22,2021",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                )
                              ],
                            ),
                            trailing: CircularPercentIndicator(
                              radius: 25.0,
                              lineWidth: 5.0,
                              percent: 0.65,
                              center: const Text(
                                "65%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Colors.black,
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Color(0xff9297fe),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Details(),
                              ),
                            );
                          },
                          child: Card(
                            child: ListTile(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dashboard Design",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Today,Shared by - Ui Been",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Team",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                                            backgroundImage: AssetImage(
                                                "assets/profile_image.png"),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 15,
                                          child: CircleAvatar(
                                            radius: 14,
                                            backgroundImage: AssetImage(
                                                "assets/profile_image.png"),
                                          ),
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 30,
                                          child: CircleAvatar(
                                            radius: 14,
                                            backgroundImage: AssetImage(
                                                "assets/profile_image.png"),
                                          ),
                                        ),
                                        Positioned(
                                            top: 10,
                                            left: 45,
                                            child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor:
                                                    Color(0xffff7547),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 20,
                                                ))),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_month_outlined),
                                      Text(
                                        "July 25,2021 - July 30,2021",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              trailing: CircularPercentIndicator(
                                radius: 25.0,
                                lineWidth: 5.0,
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
                                progressColor: Color(0xffc1ea93),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "UI/UX Design",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Today,Shared by - Unbox",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Team",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
                                          backgroundImage: AssetImage(
                                              "assets/profile_image.png"),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 15,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage(
                                              "assets/profile_image.png"),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 30,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage(
                                              "assets/profile_image.png"),
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          left: 45,
                                          child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor:
                                                  Color(0xffff7547),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              ))),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_month_outlined),
                                    Text(
                                      "June 15,2021 - June 22,2021",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    )
                                  ],
                                )
                              ],
                            ),
                            trailing: CircularPercentIndicator(
                              radius: 25.0,
                              lineWidth: 5.0,
                              percent: 0.30,
                              center: const Text(
                                "30%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                  color: Colors.black,
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Color(0xffff7547),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Text("Ongoing Content"),
                    ),
                    Center(
                      child: Text("Completed Content"),
                    ),
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
