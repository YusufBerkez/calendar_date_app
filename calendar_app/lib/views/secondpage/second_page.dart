import 'package:calendar_app/views/homepage/row_big_card.dart';
import 'package:calendar_app/views/thirdpage/thirdpage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              //Başlık kısmı
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Leading Icon kısmı
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF6F6F6),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Color(0xFF09244B),
                      ),
                    ),
                  ),

                  //Today Task Kısmı
                  Text("Today Task", style: TextStyle(fontSize: 18)),

                  //End icon Düzenleme ıconu
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF6F6F6),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mode_edit_outline_outlined),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              //Ux design- Ppler
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 325,
                        child: Column(
                          children: [
                            //Ux Design For Mons Calendar yazısı
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 65,
                                width: 320,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "UX Design for MONS calendar",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 10),

                            //Created by username kısmı
                            Row(
                              children: [
                                Image.asset("images/suser1.png"),
                                SizedBox(width: 5),
                                Text("Created by "),
                                Text(
                                  "Username",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),

                            SizedBox(height: 10),

                            //content kısmı
                            Text(
                              "In publishing and graphic design,Lorem ipsum is a placeholder The point of using Lorom Ipsum is that it has a more-or-less normal distribution of letters.",
                              style: TextStyle(fontSize: 15),
                            ),

                            SizedBox(height: 10),

                            Row(
                              children: [
                                SizedBox(width: 5),
                                Image.asset("images/flag.png"),
                                Text("Oct 25, 2025"),
                              ],
                            ),

                            SizedBox(height: 5),

                            //High - 5Scare kısmı
                            Row(
                              children: [
                                Container(
                                  width: 52,
                                  height: 37,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFFF9923),
                                  ),
                                  child: Text(
                                    "High",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2),

                                Container(
                                  height: 37,
                                  width: 72,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFF8968FF),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "5 Scare",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "stop starting, start finishing",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),

                            SizedBox(height: 8),

                            //ppler kısmı
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            "images/suser2.png",
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            "images/suser3.png",
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 40,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                            "images/suser4.png",
                                          ),
                                        ),
                                      ),

                                      Positioned(
                                        left: 60,
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                "images/suser5.png",
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text("+4"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //Subtask yazısı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  child: Text(
                    "Subtask",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),

              SizedBox(height: 15),

              RowBigCard(backgroundColor: Color(0xFFE9F5F5)),
              SizedBox(height: 20),
              RowBigCard(backgroundColor: Color(0xFFE4F2FB)),

              //Add Subtask button kısmı
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Thirdpage()),
                        );
                      },
                      child: Container(
                        width: 100,
                        child: Row(
                          children: [
                            Icon(Icons.add),
                            SizedBox(width: 2),
                            Text(
                              "Add subtask",
                              style: TextStyle(color: Color(0xFF3C89F1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Attachment",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black38)],
          ),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Color(0xFFFC9729)),
              Icon(Icons.search, color: Color(0xFFFC9729)),
              Icon(Icons.check_box_outlined, color: Color(0xFFFC9729)),
              Icon(Icons.notifications_none_sharp, color: Color(0xFFFC9729)),
              CircleAvatar(
                backgroundImage: AssetImage("images/userellipse.png"),
                radius: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
