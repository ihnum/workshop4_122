import 'package:flutter/material.dart';
import 'package:workshop3_122/screen/addfrom.dart';
import '../models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  Color _getCardColor(String type) {
    switch (type) {
      case "ต้ม":
        return Colors.lightBlueAccent;
      case "ผัก":
        return Colors.greenAccent;
      case "ย่าง":
        return Colors.orangeAccent;
      case "ทอด":
        return Colors.redAccent;
      case "อบ":
        return Colors.amberAccent;
      default:
        return Colors.grey[200]!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รายการอาหาร'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: emp.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _getCardColor(emp[index].type),
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 3,
                  ),
                  padding: const EdgeInsets.all(30),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            emp[index].name,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "ประเภทอาหาร: ${emp[index].type}",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "ส่วนประกอบสำคัญ: ${emp[index].components}",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "ราคา: ${emp[index].price} บาท",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Image.asset(
                        emp[index].foodpic.image,
                        width: 70,
                        height: 70,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: 100,
            height: 80,
            child: IconButton(
              icon: const Icon(
                Icons.add,
                size: 40,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const Addfrom()));
              },
            ),
          ),
        ],
      ),
    );
  }
}