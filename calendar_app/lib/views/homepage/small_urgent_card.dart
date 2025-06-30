import 'package:flutter/material.dart';

class SmallUrgentCard extends StatefulWidget {
  final Color backgroundColor;
  const SmallUrgentCard({required this.backgroundColor});

  @override
  State<SmallUrgentCard> createState() => _SmallUrgentCardState();
}

class _SmallUrgentCardState extends State<SmallUrgentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
      child: Container(
        width: 160,

        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            //Urgent yazısı
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Urgent",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            //UX Design for MONS calendar yazısı
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "UX Design for MONS calendar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            //Tarih ve bayrak resmi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  Image.asset("images/flag.png"),
                  SizedBox(width: 3),
                  Text("Oct 25, 2025"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
