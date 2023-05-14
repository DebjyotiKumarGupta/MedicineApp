import 'package:flutter/material.dart';

class Medicine extends StatelessWidget {
  String Med;
  String Day;
  String Time;
  String done;

  Medicine(
      {required this.Med,
      required this.Day,
      required this.done,
      required this.Time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 5, top: 10, right: 10, bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.purple,
              child: Icon(Icons.water_drop, color: Colors.white),
            ),
            title: Text(
              Med,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Time),
                  Text(Day.toString()),
                ],
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notifications_none_sharp,
                      color: done.toString() == "Snoozed"
                          ? Colors.yellow.shade700
                          : done.toString() == "Missed"
                              ? Colors.red
                              : Colors.green,
                      size: 30,
                    ),
                    Text(
                      done.toString(),
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
