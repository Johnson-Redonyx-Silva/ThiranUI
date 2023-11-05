import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const Text(
                "Alex Marconi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xfffec278),
                              // Set the background color
                              borderRadius: BorderRadius.circular(
                                  20.0), // Set the border radius
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.history,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'In Progress',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xff9297fe),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.compare_arrows_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'On Going',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xffc1ea93),
                              // Set the background color
                              borderRadius: BorderRadius.circular(
                                  20.0), // Set the border radius
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.check_box_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Completed',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: const Color(0xffff7547),
                              // Set the background color
                              borderRadius: BorderRadius.circular(
                                  20.0), // Set the border radius
                            ),
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.cancel_presentation_sharp,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily Task",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Row(
                    children: [
                      Text(
                        "All Task  ",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.grey,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Card(
                    child: ListTile(
                        leading: const Icon(
                          Icons.check_circle_outline,
                          color: Colors.grey,
                        ),
                        title: const Row(
                          children: [
                            Text(
                              "App Animation",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Container(
                          height: 7,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const LinearProgressIndicator(
                              value: 0.65,
                              backgroundColor: Colors.transparent,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Color(0xff9297fe)),
                            ),
                          ),
                        ),
                      trailing: Container(
                        width: 90, // Adjust the width as needed
                        child: const Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 0,
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15, // Adjust the left position to stack images
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 30, // Adjust the left position to stack images
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 14,
                                right: 1,
                                child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 20,)), // Replace with the desired icon
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                        leading: const Icon(
                          Icons.check_circle,
                          color:Color(0xffc1ea93),
                        ),
                        title: const Row(
                          children: [
                            Text(
                              "Dashboard Design",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Container(
                          height: 7,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const LinearProgressIndicator(
                              value: 0.85,
                              backgroundColor: Colors.transparent,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Color(0xffc1ea93)),
                            ),
                          ),
                        ),
                      trailing: Container(
                        width: 90, // Adjust the width as needed
                        child: const Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 0,
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15, // Adjust the left position to stack images
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 30, // Adjust the left position to stack images
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 14,
                                right: 1,
                                child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 20,)), // Replace with the desired icon
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                        leading: const Icon(
                          Icons.check_circle_outline,
                          color: Colors.grey,
                        ),
                        title: const Row(
                          children: [
                            Text(
                              "UI/UX Design",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        subtitle: Container(
                          height: 7,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: const LinearProgressIndicator(
                              value: 0.30,
                              backgroundColor: Colors.transparent,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Color(0xfffec278)),
                            ),
                          ),
                        ),
                      trailing: Container(
                        width: 90, // Adjust the width as needed
                        child: const Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 0,
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 15, // Adjust the left position to stack images
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 30, // Adjust the left position to stack images
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage("assets/profile_image.png"),
                              ),
                            ),
                            Positioned(
                              top: 14,
                                right: 1,
                                child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 20,)), // Replace with the desired icon
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
