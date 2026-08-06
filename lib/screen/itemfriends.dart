import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/freiends.dart';


class Friend extends StatefulWidget {
  const Friend({super.key});

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {

  Color _getCardColor(String type) {
    switch (type) {
      case "เชียร์":
        return Colors.lightBlueAccent;
      case "ปูน":
        return Colors.greenAccent;
      case "โอเว่น":
        return Colors.orangeAccent;
      default:
        return Colors.grey[200]!;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emp.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _getCardColor(emp[index].nickname),
          ),
          margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    emp[index].name, 
                    //style: const TextStyle(
                      //fontSize: 25, fontWeight: FontWeight.bold,
                      //color: Color.fromARGB(255, 175, 76, 76)),
                    style: GoogleFonts.itim(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "ชื่อเล่น: ${emp[index].nickname}",
                    style: GoogleFonts.itim(
                          textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ), 
                  ),
                  Text(
                    "อายุ: ${emp[index].age} ",
                    style: GoogleFonts.itim(
                          textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ), 
                  ),
                  Text(
                    "อาหารที่ชอบ: ${emp[index].fevfood} ",
                    style: GoogleFonts.itim(
                          textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ), 
                  ),              
                  Text(
                    "เลขที่ชอบ: ${emp[index].fevnumber} ",
                    style: GoogleFonts.itim(
                          textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ), 
                  ),                                                       
                ],
              ),
              Image.asset(
                emp[index].friendpic.image,
                width: 70,
                height: 70,
              ),
            ],
          ),
        );
      },
    );
  }
}
