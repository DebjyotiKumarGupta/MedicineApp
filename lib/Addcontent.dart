import 'package:flutter/material.dart';
import 'package:shiv/Homepage.dart';

class AddContent extends StatefulWidget {
  const AddContent({super.key});

  @override
  State<AddContent> createState() => _AddContentState();
}

class _AddContentState extends State<AddContent> {
  int selectedIndex = -1;
  List<String> labels = [
    "Before Food",
    "After Food",
    "Before Sleep",
  ];

  double _value = 1.0;
  List<Color> colorList = [
    Colors.blue[200]!, // light blue
    Colors.red[200]!, // light red
    Colors.green[200]!, // light green
    Colors.orange[200]!, // light orange
    Colors.yellow[200]!, // light yellow
    Colors.purple[200]!, // light purple
    Colors.teal[200]!, // light teal
    Colors.pink[200]!, // light pink
    Colors.indigo[200]!, // light indigo
    Colors.grey[400]!, // light grey
  ];

  void incrementSum() {
    setState(() {
      sum++;
    });
  }

  void decrementSum() {
    setState(() {
      if (sum > 0) {
        sum--;
      }
    });
  }

  List<ListItem> itemList = [
    ListItem(
      title: 'Tablet',
      imageUrl: 'assets/capsule.jpg',
    ),
    ListItem(
      title: 'Capsule',
      imageUrl: 'assets/download.jpeg',
    ),
    ListItem(
      title: 'Cream',
      imageUrl: 'assets/cream.png',
    ),
    ListItem(
      title: 'Liquid',
      imageUrl: 'assets/picon.png',
    ),
    ListItem(
      title: 'Tablet',
      imageUrl: 'assets/capsule.jpg',
    ),
    ListItem(
      title: 'Capsule',
      imageUrl: 'assets/download.jpeg',
    ),
    ListItem(
      title: 'Cream',
      imageUrl: 'assets/cream.png',
    ),
    ListItem(
      title: 'Liquid',
      imageUrl: 'assets/picon.png',
    ),
    // Add more items here...
  ];

  int count = 0, count2 = 0, sum = 1, plus1 = 0, plus2 = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Icon(Icons.arrow_back_ios),
                        ),
                        Text(
                          "Add Medicines",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search Medicine Name',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.mic),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Compartment",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        10,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              count = index +
                                  1; // set count to the tapped container's index
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            height: 60.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: count == index + 1 ||
                                        (index == 0 && count == 0)
                                    ? Colors.blue
                                    : Colors
                                        .grey, // change border color of tapped container
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Colour",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        10,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              count2 = index +
                                  1; // set count to the tapped container's index
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: count2 == index + 1 ||
                                        (index == 0 && count2 == 0)
                                    ? Colors.blue
                                    : Colors
                                        .grey, // change border color of tapped container
                              ),
                              shape: BoxShape.circle,
                              color: colorList[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Type",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        itemList.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              count = index +
                                  1; // set count to the tapped container's index
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            height: 110.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: count == index + 1 ||
                                        (index == 0 && count == 0)
                                    ? Colors.blue
                                    : Colors
                                        .grey, // change border color of tapped container
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child:
                                        Image.asset(itemList[index].imageUrl),
                                  ),
                                  Expanded(
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(itemList[index].title),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Quantity",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10, left: 2),
                          height: 50,
                          width: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Take 1/2 Pill",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              plus1 = 1;
                              plus2 = 0;
                            });
                            decrementSum();
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                              color: plus1 == 1 ? Colors.blue : null,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.remove,
                                color: plus1 == 1 ? Colors.white : Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              plus1 = 0;
                              plus2 = 1;
                            });
                            incrementSum();
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                              color: plus2 == 1 ? Colors.blue : null,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: plus2 == 1 ? Colors.white : Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Count",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: ((sum.toInt()) / 10).toInt() == 0
                              ? Text(
                                  "0" + sum.toInt().toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  sum.toInt().toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 2.0, // Set the track height to 4.0
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ((sum.toInt()) / 10).toInt() == 0
                            ? Text(
                                "0" + sum.toInt().toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            : Text(
                                sum.toInt().toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                        Expanded(
                          child: Slider(
                            value: sum.toDouble(),
                            min: 01,
                            max: 100,
                            onChanged: (double newValue) {
                              setState(() {
                                sum = newValue.toInt();
                              });
                            },
                            activeColor: Colors.blue,
                            inactiveColor: Colors.grey,
                            label: '${sum.toInt()}',
                            divisions: 100,
                            semanticFormatterCallback: (double newValue) {
                              return '${sum.toInt()}';
                            },
                          ),
                        ),
                        Text('100'),
                      ],
                    ),
                  ),
                  Text(
                    "Set Date",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(right: 10, left: 2),
                            height: 50,
                            width: 230,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Today",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(right: 10, left: 2),
                            height: 50,
                            width: 230,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "End Date",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Frequency of Days",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(right: 10, left: 2),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "EveryDay",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.keyboard_double_arrow_down,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "How many times a Days",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(right: 10, left: 2),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Three Time",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.keyboard_double_arrow_down,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    leading: Icon(
                      Icons.watch_later_outlined,
                      size: 35,
                    ),
                    title: Text("Dose 1"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                  Divider(height: 1.0, color: Colors.grey),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    leading: Icon(
                      Icons.watch_later_outlined,
                      size: 35,
                    ),
                    title: Text("Dose 2"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                  Divider(height: 1.0, color: Colors.grey),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    leading: Icon(
                      Icons.watch_later_outlined,
                      size: 35,
                    ),
                    title: Text("Dose 3"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                  Divider(height: 1.0, color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        for (int i = 0; i < labels.length; i++)
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = i;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(5),
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: selectedIndex == i || (i == 0)
                                        ? Colors.blue
                                        : Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                  color: selectedIndex == i || (i == 0)
                                      ? Colors.blue
                                      : Colors.blue[50],
                                ),
                                child: Center(
                                  child: Text(
                                    labels[i],
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListItem {
  final String title;
  final String imageUrl;

  ListItem({
    required this.title,
    required this.imageUrl,
  });
}
