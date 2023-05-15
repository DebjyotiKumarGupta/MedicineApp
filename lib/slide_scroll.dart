import 'package:flutter/material.dart';

class WeekDaysScroll extends StatefulWidget {
  @override
  _WeekDaysScrollState createState() => _WeekDaysScrollState();
}

class _WeekDaysScrollState extends State<WeekDaysScroll> {
  int count = 0;
  final List<String> weekDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<String> weekD = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final PageController _pageController = PageController(viewportFraction: 0.4);
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPageIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Stack(
          children: [
            SizedBox(
              height: 50,
              width: 400,
              child: Center(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: weekDays.length,
                  itemBuilder: (context, index) {
                    return (count == index)
                        ? Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                weekDays[index] +
                                    ", Sep " +
                                    (count + 3).toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          )
                        : Center(
                            child: Text(
                              weekD[index],
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14), // reduce font size
                            ),
                          );
                  },
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 80,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    count > 0 ? count-- : count = 0;
                  });
                  _pageController.previousPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            Positioned(
              top: 0,
              right: 75,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    count < weekDays.length - 1
                        ? count++
                        : count = weekDays.length - 1;
                    print(count);
                  });
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
