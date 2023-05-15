import 'package:flutter/material.dart';
import 'package:shiv/Homepage.dart';

import 'DashBoard.dart';
import 'Medicine.dart';
import 'TodayCard.dart';

class ReportContent extends StatefulWidget {
  const ReportContent({super.key});

  @override
  State<ReportContent> createState() => _ReportContentState();
}

class _ReportContentState extends State<ReportContent> {
  int count2 = 0;
  List<String> items = [
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THU",
    "FRI",
    "SAT",
    "SUN",
  ];
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "Report",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                today(),
                DashBoard(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Check History",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            items.length - 1,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  count2 = index +
                                      1; // set count to the tapped container's index
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    items[index],
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 5),
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: count2 == index + 1 ||
                                              (index == 0 && count2 == 0)
                                          ? Colors.blue.shade400
                                          : Colors.blue.shade100,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${index + 1}',
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                  Time: Timing[1],
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
