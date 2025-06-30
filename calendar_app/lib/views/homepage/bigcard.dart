import 'package:calendar_app/views/secondpage/second_page.dart';
import 'package:flutter/material.dart';

class Bigcard extends StatefulWidget {
  final Color backgroundColor;
  const Bigcard({required this.backgroundColor});

  @override
  State<Bigcard> createState() => _BigcardState();
}

class _BigcardState extends State<Bigcard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => SecondPage()));
        },
        child: Container(
          width: 245,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.backgroundColor,
          ),
          child: Column(
            children: [
              //Yazı kısmı
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 205,
                    height: 40,
                    child: Text(
                      "UX Design For MONS calendar",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              //Date kısmı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("images/flag.png"),
                    Text("Oct 25, 2025"),
                  ],
                ),
              ),

              //Text kısmı
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 23.0,
                  vertical: 5,
                ),
                child: Text(
                  "n publishing and graphic d与好n lor中n psum is a plocehold时",
                  style: TextStyle(fontSize: 13),
                ),
              ),

              //high- 5 Scare kısmı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    //High kısmı
                    Container(
                      width: 52,
                      height: 37,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "High",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9923),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 10),
                    //5 Scare kısmı
                    Container(
                      height: 37,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Color(0xFF8968FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "5 Scare",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Ppler kısmı
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/firstuser.png"),
                          ),

                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "images/seconduser.png",
                              ),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "images/thirduser.png",
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "images/fourthuser.png",
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text("+4"),
                              ],
                            ),
                          ),
                        ],
                      ),
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
