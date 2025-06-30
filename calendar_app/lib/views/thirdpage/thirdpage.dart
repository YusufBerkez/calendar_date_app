import 'package:flutter/material.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Sep 2025 ve buton kısmı
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Text(
                        "Sep,2025",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Color(0xFFF6F6F6),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 5),

              //Tarih kısımlaro
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("M"),
                      SizedBox(height: 3),
                      Text("17", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("T"),
                      SizedBox(height: 3),
                      Text("18", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("W"),
                      SizedBox(height: 3),
                      Text("19", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("T", style: TextStyle(color: Color(0xFFFC9729))),
                      SizedBox(height: 3),
                      Text(
                        "20",
                        style: TextStyle(
                          color: Color(0xFFFC9729),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("F"),
                      SizedBox(height: 3),
                      Text("21", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("S"),
                      SizedBox(height: 3),
                      Text("22", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("S"),
                      SizedBox(height: 3),
                      Text("23", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),
              //09.00 etkinliği
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "09:00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(color: Color(0xffd9d9d9), height: 1),
                    ),
                    Container(
                      height: 81,
                      width: 227,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE9D1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                          vertical: 17,
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xffFC9729),
                                    ),
                                    width: 6,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Project Discussion",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text("09:00AM - 10:00AM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(color: Color(0xffd9d9d9), height: 1),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              //10:00 TEK ÇİZGİ
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "10:00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(height: 1, color: Color(0xffd9d9d9)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              //Büyük container Project Discussion
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 143,

                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 63.5,
                                width: 48,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "11:00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15.0,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 15,
                                            color: Color(0xff3EC2B8),
                                          ),
                                          Expanded(
                                            child: Container(
                                              color: Color(0xff3EC2B8),
                                              height: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Text(
                                      "12:00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Color(0xff3EC2B8),
                                  height: 2,
                                ),
                              ),

                              Expanded(
                                flex: 7,
                                child: Container(
                                  height: 143,
                                  width: 267,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFe9f5f5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0,
                                      vertical: 17,
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  color: Color(0xff3ec2b8),
                                                ),
                                                width: 6,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Project Discussion",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Container(
                                              width: 205,
                                              height: 60,

                                              child: Text(
                                                "Many desktop publishin图Poca0转 and web page oditors now uso",
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text("09:00AM-10:00AM"),
                                          ],
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
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              //13.30 Lunch Time etkinliği
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "13:30",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(color: Color(0xffd9d9d9), height: 1),
                    ),
                    Container(
                      height: 81,
                      width: 227,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEECFA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                          vertical: 17,
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xffFC9729),
                                    ),
                                    width: 6,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lunch Time",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text("09:00AM - 10:00AM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(color: Color(0xffd9d9d9), height: 1),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              //14.30 tek gri çizgi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "14:30",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(height: 1, color: Color(0xffd9d9d9)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),
              //15:00-16:00 Create Color Style
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 143,

                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Container(
                                height: 63.5,
                                width: 48,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "15:00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 15.0,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 15,
                                            color: Color(0xff3EC2B8),
                                          ),
                                          Expanded(
                                            child: Container(
                                              color: Color(0xff3EC2B8),
                                              height: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Text(
                                      "16:00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Color(0xff3EC2B8),
                                  height: 2,
                                ),
                              ),

                              Expanded(
                                flex: 7,
                                child: Container(
                                  height: 143,
                                  width: 267,
                                  decoration: BoxDecoration(
                                    color: Color(0xffdaf4ff),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0,
                                      vertical: 17,
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  color: Color(0xff83d2f1),
                                                ),
                                                width: 6,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Create color style",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Container(
                                              width: 205,
                                              height: 60,

                                              child: Text(
                                                "Many desktop publishin图Poca0转 and web page oditors now uso",
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text("09:00AM-10:00AM"),
                                          ],
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
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              //17:00 Project Discussion
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "17:00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(color: Color(0xffd9d9d9), height: 1),
                    ),
                    Container(
                      height: 81,
                      width: 227,
                      decoration: BoxDecoration(
                        color: Color(0xffeafbe8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                          vertical: 17,
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xff54c92d),
                                    ),
                                    width: 6,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Team meeting",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text("09:00AM - 10:00AM"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(color: Color(0xffd9d9d9), height: 1),
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
