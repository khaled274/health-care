// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';

class NursesScreen extends StatefulWidget {
  const NursesScreen({super.key});

  @override
  State<StatefulWidget> createState() => NursesScreenState();
}

class NursesScreenState extends State<NursesScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen();
  }

  Widget initScreen() {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(.7),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "",
                style: TextStyle(
                  color: Colors.blue.withOpacity(.7),
                  fontSize: 10,
                  fontFamily: '',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "",
                style: TextStyle(
                  color: Colors.blue.withOpacity(.7),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Color(0x14000000),
                    offset: Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        maxLines: 1,
                        autofocus: false,
                        style: TextStyle(
                            color: Colors.blue.withOpacity(.7), fontSize: 20),
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Search..'),
                        cursorColor: Colors.blue.withOpacity(.7),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: Text(
                      'Category',
                      style: TextStyle(
                        color: Colors.blue.withOpacity(.7),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 1),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.blue.withOpacity(.7),
                          fontSize: 19,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            
            Container(
              width: size.width,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: Text(
                      'Top Rated',
                      style: TextStyle(
                        color: Colors.blue.withOpacity(.7),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 1),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.blue.withOpacity(.7),
                          fontSize: 19,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    demoTopRatedDr(
                      "assets/images/dr_1.png",
                      "Dr. Fred Mask",
                      "Heart surgen",
                      "4.1",
                      "",
                    ),
                    demoTopRatedDr(
                      "assets/images/dr_2.png",
                      "Dr. Stella Kane",
                      "Bone Specialist",
                      "4.2",
                      "",
                    ),
                    demoTopRatedDr(
                      "assets/images/dr_3.png",
                      "Dr. Zac Wolff",
                      "Eyes Specialist",
                      "4.4",
                      "",
                    ),
                    demoTopRatedDr("assets/images/dr_2.png", "Dr. Fred Mask",
                        "Heart surgen", "4.3", ""),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget demoCategories(String img, String name, String drCount) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(img),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: const Color(0xffd9fffa).withOpacity(0.07),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              drCount,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget demoTopRatedDr(String img, String name, String speciality,
      String rating, String distance) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorDetailPage()));
      // },
      child: Container(
        height: 90,
        // width: size.width,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset(img),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.blue.withOpacity(.7),
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.blue.withOpacity(.7),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 3, left: size.width * 0.25),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Rating: ",
                                  style: TextStyle(
                                    color: Colors.blue.withOpacity(.7),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  rating,
                                  style: TextStyle(
                                    color: Colors.blue.withOpacity(.7),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
