// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DoctorDetailPage extends StatefulWidget {
  const DoctorDetailPage({super.key});

  @override
  State<StatefulWidget> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetailPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff053F5E),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              child: const Icon(
                Icons.notifications_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                  color: Color(0xff053F5E),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Container(
                margin: const EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Image.asset(
                        "assets/images/doctor2.jpg",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            child: const Text(
                              'Dr. Fred Mask',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Heart surgen',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: const Text(
                              'Rating: 4.5',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30),
              child: const Text(
                'April 2020',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  demoDates("Mon", "21", true),
                  demoDates("Tue", "22", false),
                  demoDates("Wed", "23", false),
                  demoDates("Thur", "24", false),
                  demoDates("Fri", "25", false),
                  demoDates("Sat", "26", false),
                  demoDates("Sun", "27", false),
                  demoDates("Mon", "28", false),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30),
              child: const Text(
                'Morning',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 2.7,
                children: [
                  doctorTimingsData("05:30 PM", true),
                  doctorTimingsData("06:30 PM", false),
                  doctorTimingsData("07:30 PM", false),
                  doctorTimingsData("08:30 PM", false),
                  doctorTimingsData("09:30 PM", false),
                  doctorTimingsData("10:30 PM", false),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, top: 30),
              child: const Text(
                'Evening',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 2.6,
                children: [
                  doctorTimingsData("05:30 AM", false),
                  doctorTimingsData("06:30 AM", false),
                  doctorTimingsData("07:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("09:30 AM", true),
                  doctorTimingsData("10:30 AM", false),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 54,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xff053F5E),
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x17000000),
                    offset: Offset(0, 15),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Text(
                'Make An Appointment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget demoDates(String day, String date, bool isSelected) {
    return isSelected
        ? Container(
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Color(0xff053F5E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    day,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(7),
                  child: Text(
                    date,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: const Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    day,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(7),
                  child: Text(
                    date,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
  }

  Widget doctorTimingsData(String time, bool isSelected) {
    return isSelected
        ? Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              color: const Color(0xff053F5E),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: const Icon(
                    Icons.access_time,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  child: const Text(
                    '08:30 AM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            decoration: BoxDecoration(
              color: const Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: const Icon(
                    Icons.access_time,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  child: const Text(
                    '08:30 AM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
