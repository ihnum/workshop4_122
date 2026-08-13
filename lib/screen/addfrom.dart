import 'package:flutter/material.dart';
import 'package:workshop3_122/main.dart';
import 'package:workshop3_122/models/foodmenu.dart';

class Addfrom extends StatefulWidget {
  const Addfrom({super.key});

  @override
  State<Addfrom> createState() => _AddfromState();
}

class _AddfromState extends State<Addfrom> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _components = '';
  int _price = 0;
  FoodType _foodType = FoodType.tom;
  Foodpic _foodpic = Foodpic.menu1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 198, 198),

      appBar: AppBar(
        title: const Text('เพิ่มข้อมูล'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(30),

        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              TextFormField(
                maxLength: 20,
                decoration: const InputDecoration(
                  label: Text(
                    'ชื่ออาหาร',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาป้อนชื่ออาหาร';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),

              TextFormField(
                maxLength: 100,
                decoration: const InputDecoration(
                  label: Text(
                    'ส่วนประกอบสำคัญ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาป้อนส่วนประกอบสำคัญ';
                  }
                  return null;
                },
                onSaved: (value) {
                  _components = value!;
                },
              ),

              TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 20,
                decoration: const InputDecoration(
                  label: Text(
                    'ราคา',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                onSaved: (value) {
                  _price = int.parse(value.toString());
                },
              ),

              DropdownButtonFormField<FoodType>(
                initialValue: _foodType,

                decoration: const InputDecoration(
                  label: Text(
                    'ชนิดอาหาร',
                    style: TextStyle(fontSize: 20),
                  ),
                ),

                items: FoodType.values.map((key) {
                  return DropdownMenuItem<FoodType>(
                    value: key,
                    child: Text(key.ty),
                  );
                }).toList(),

                onChanged: (value) {
                  setState(() {
                    _foodType = value!;
                  });
                },
              ),

              DropdownButtonFormField<Foodpic>(
                initialValue: _foodpic,

                decoration: const InputDecoration(
                  label: Text(
                    'รูปภาพอาหาร',
                    style: TextStyle(fontSize: 20),
                  ),
                ),

                items: Foodpic.values.map((pic) {
                  return DropdownMenuItem<Foodpic>(
                    value: pic,
                    child: Row(
                      children: [
                        Text(pic.namefood),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          pic.image,
                          width: 30,
                          height: 30,
                        ),
                    ],)
                  );
                }).toList(),

                onChanged: (value) {
                  setState(() {
                    _foodpic = value!;
                  });
                },
              ),

              const SizedBox(
                height: 20,
              ),

              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    emp.add(
                      FoodMenu(
                        name: _name,
                        type: _foodType.ty,
                        components: _components,
                        price: _price,
                        foodpic: _foodpic,
                      ),
                    );
                    _formKey.currentState!.reset();

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  }
                },

                style: FilledButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),

                child: const Text(
                  'บันทึก',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}