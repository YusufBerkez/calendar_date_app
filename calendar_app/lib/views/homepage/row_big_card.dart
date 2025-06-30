import 'package:flutter/material.dart';

class RowBigCard extends StatefulWidget {
  final Color backgroundColor;
  const RowBigCard({required this.backgroundColor});

  @override
  State<RowBigCard> createState() => _RowBigCardState();
}

class _RowBigCardState extends State<RowBigCard> {
  
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.backgroundColor,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        //UX Design for MONS calendar yazısı
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 10,
                            left: 20,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "UX Design for MONS calendar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),

                        //Bayrak ve saat
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            bottom: 20,
                          ),
                          child: Row(
                            children: [
                              Image.asset("images/flag2.png"),
                              SizedBox(width: 4),
                              Text("6 hours"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Checkbox(value: (checkboxValue), onChanged: (gelenValue){
                      
                      setState(() {
                        checkboxValue=gelenValue!;
                      });
                    })
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
