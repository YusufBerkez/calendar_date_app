import 'package:calendar_app/views/homepage/bigcard.dart';
import 'package:calendar_app/views/homepage/row_big_card.dart';
import 'package:calendar_app/views/homepage/small_urgent_card.dart';
import 'package:calendar_app/views/secondpage/second_page.dart';
import 'package:calendar_app/views/thirdpage/thirdpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selectedHome = true;
  bool selected_search = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //Body nin arka plana taşmasına izin verir
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),

              //Hello Username ve 4 new tasks today kısmı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 79,
                      width: 167,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Hello username kısmı
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  "images/userellipse.png",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text("Hello,"),
                              ),
                              Text(
                                "Username",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                          //4 New tasks today kısmı
                          Row(
                            children: [
                              Text(
                                "4 New ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("tasks today"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //UX Design For Mons Calendar Kısmı
              SizedBox(
                height: 280, //Cardın yüksekliği

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Bigcard(backgroundColor: Color(0xFFFFE7CD)),
                    Bigcard(backgroundColor: Color(0xFFC2DDFE)),
                  ],
                ),
              ),

              //To DO yazısı
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("To ", style: TextStyle(fontSize: 16)),
                    Text(
                      "Do",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 2),
                    CircleAvatar(
                      backgroundColor: Color(0xFFE2EEEE),
                      child: Text("3", style: TextStyle(fontSize: 14)),
                    ),
                  ],
                ),
              ),

              //Urgent Cardlar
              SizedBox(
                height: 168,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SmallUrgentCard(backgroundColor: Color(0xFFFDEEE9)),
                    SmallUrgentCard(backgroundColor: Color(0xFFE9F5F5)),
                    SmallUrgentCard(backgroundColor: Color(0xFFEEECFA)),
                  ],
                ),
              ),

              //In Progress Yazısı
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "In ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Progress", style: TextStyle(fontSize: 16)),
                    SizedBox(width: 2),
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFE7CD),
                      child: Text("3", style: TextStyle(fontSize: 14)),
                    ),
                  ],
                ),
              ),

              RowBigCard(backgroundColor: Color(0xFFE9F5F5)),
              SizedBox(height: 20),
              RowBigCard(backgroundColor: Color(0xFFE9F5F5)),
              SizedBox(height: 20),
              RowBigCard(backgroundColor: Color(0xFFE9F5F5)),
              SizedBox(height: 20),
              RowBigCard(backgroundColor: Color(0xFFE9F5F5)),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      //   child: Container(
      //     height: 60,
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(40),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black12,
      //           blurRadius: 20,
      //           offset: Offset(0, 5),
      //         ),
      //       ],
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Icon(Icons.home, color: Colors.orange),
      //         Icon(Icons.search, color: Colors.orange),
      //         Icon(Icons.check_box_outlined, color: Colors.orange),
      //         Icon(Icons.notifications_none, color: Colors.orange),
      //         CircleAvatar(
      //           radius: 16,
      //           backgroundImage: AssetImage(
      //             "images/userellipse.png",
      //           ), // Profil resmi
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      //   child: Container(
      //     height: 60,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(40),
      //       color: Colors.white,
      //       boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black38)],
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         IconButton(
      //           onPressed: () {
      //             setState(() {
      //               selectedHome=true;
      //               selected_search=false;
      //             });
      //           },
      //           icon: Icon(Icons.home, color: Colors.orange),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => SecondPage()),
      //             );
      //           },
      //           icon: Icon(Icons.search, color: Colors.orange),
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             selectedHome=false;
      //               selected_search=true;
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => Thirdpage()),
      //             );
      //           },
      //           icon: Icon(Icons.check_box_outlined, color: Colors.orange),
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(
      //             Icons.notifications_none_outlined,
      //             color: Colors.orange,
      //           ),
      //         ),
      //         CircleAvatar(
      //           radius: 16,
      //           child: Image.asset("images/userellipse.png"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),



bottomNavigationBar: BottomNavigationBar(
  
  currentIndex: selectedIndex,
  items: [
  BottomNavigationBarItem(
    
    icon: Icon(Icons.home), label: "Home",
  
  
  )
]),

    );
  }
}
