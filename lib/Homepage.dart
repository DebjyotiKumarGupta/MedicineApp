import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:shiv/profile.dart';

import 'Addcontent.dart';
import 'Medicine.dart';
import 'ReportContent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int change = 0;
  List<String> Tablets = ["Calpol 500mg Tablet"];
  List<String> Timing = [
    "Before Breakfast",
    "After Food",
    "Before Sleep",
  ];
  List<String> done = [
    "Taken",
    "Missed",
    "Snoozed",
    "Left",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Harry!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                "5 Medicines Left",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.add_box,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: CircleAvatar(
                backgroundImage: Image.asset('assets/profile1.png').image,
                radius: 18,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (content) => AddContent()));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // decoration:
        //     BoxDecoration(border: Border(top: BorderSide(color: Colors.grey))),
        height: 60,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                  setState(() {
                    change = 0;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      change == 0 ? Icons.home_rounded : Icons.home_outlined,
                      color: Colors.blue,
                      size: 40,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReportContent()));
                  setState(() {
                    change = 1;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      change == 1
                          ? Icons.comment_bank
                          : Icons.comment_bank_outlined,
                      color: Colors.blue,
                      size: 40,
                    ),
                    Text(
                      "Report",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Text(
                            "Saturday, Sep 3",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Morning 08:00 am",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Medicine(
                  Day: '01',
                  Med: Tablets[0],
                  done: done[0],
                  Time: Timing[0],
                ),
                Medicine(
                  Day: '27',
                  Med: Tablets[0],
                  done: done[1],
                  Time: Timing[0],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Afternoon 02:00 pm",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Medicine(
                  Day: '01',
                  Med: Tablets[0],
                  done: done[2],
                  Time: Timing[1],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Night 09:00 pm",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Medicine(
                  Day: '03',
                  Med: Tablets[0],
                  done: done[2],
                  Time: Timing[2],
                ),
                Medicine(
                  Day: '01',
                  Med: Tablets[0],
                  done: done[2],
                  Time: Timing[2],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
