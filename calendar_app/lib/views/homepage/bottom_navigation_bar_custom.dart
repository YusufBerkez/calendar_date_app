import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  State<BottomNavigationBarCustom> createState() => _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Deneme"),
      bottomNavigationBar: Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(Icons.home,color: Colors.orange,),
            Icon(Icons.home,color: Colors.orange,),
            Icon(Icons.home,color: Colors.orange,),
            Icon(Icons.home,color: Colors.orange,),
            Image.asset("images/userellipse.png"),
          ],
        ),
      ),
    );
  }
}