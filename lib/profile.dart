import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shiv/LoginPage.dart';

import 'Homepage.dart';
import 'SettingsBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int tap = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios)),
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45,
                              child: Image.asset('assets/profile1.png'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 50,
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 10,
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Take care!",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Richa Bose",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SettingsBar(
                        ico: Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                        ),
                        subtile: 'Check your medicine notification',
                        title: 'Notification',
                      ),
                      SettingsBar(
                        ico: Icon(
                          Icons.volume_up_outlined,
                          size: 30,
                        ),
                        subtile: 'Ring, Silent, Vibrate',
                        title: 'Sound',
                      ),
                      SettingsBar(
                        ico: Icon(
                          Icons.person_outline_outlined,
                          size: 30,
                        ),
                        subtile: 'Password, Email ID, Phone Number',
                        title: 'Manage Your Account',
                      ),
                      SettingsBar(
                        ico: Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                        ),
                        subtile: 'Check your medicine notification',
                        title: 'Notification',
                      ),
                      SettingsBar(
                        ico: Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                        ),
                        subtile: 'Check your medicine notification',
                        title: 'Notification',
                      ),
                      Text(
                        "Device",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 233, 245),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      tap = 0;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: tap == 0
                                          ? Colors.white
                                          : Colors.transparent,
                                    ),
                                    child: SettingsBar(
                                      ico: Icon(
                                        Icons.volume_up_outlined,
                                        size: 30,
                                      ),
                                      subtile:
                                          'Check your medicine notification',
                                      title: 'Notification',
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      tap = 1;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: tap == 1
                                          ? Colors.white
                                          : Colors.transparent,
                                    ),
                                    child: SettingsBar(
                                      ico: Icon(
                                        Icons.volume_up_outlined,
                                        size: 30,
                                      ),
                                      subtile: 'Ring, Silent , Vibrate',
                                      title: 'Sound Option',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Caretakers: 03",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 221, 233, 245),
                        ),
                        height: 135,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 10, top: 45, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        Image.asset('assets/profile1.png')
                                            .image,
                                    backgroundColor: Colors.white,
                                    radius: 28,
                                  ),
                                  Text("Dipa Luna"),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                        Image.asset('assets/profile1.png')
                                            .image,
                                    radius: 28,
                                  ),
                                  Text("Roz Sod.."),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        Image.asset('assets/profile1.png')
                                            .image,
                                    backgroundColor: Colors.white,
                                    radius: 28,
                                  ),
                                  Text("Sunny Tu.."),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey.shade400,
                                    radius: 27,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 25,
                                      child: Center(
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 35,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text("Add"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Doctor",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 233, 245),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Add Your Doctor",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Or use"),
                                  Text(
                                    "Invite link",
                                    style: TextStyle(
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          "Terms of Use",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          "Rate Us",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          "Share",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          // Perform some action here

                          // Navigate to the sign-in page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => LoginIn()),
                          );

                          // Exit the app
                        },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.blue.shade300),
                          ),
                          child: Center(
                            child: Text(
                              "Log Out",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
