enum FoodType {
  tom(ty: 'ต้ม'),
  pad(ty: 'ผัด'),
  yang(ty: 'ย่าง'),
  tod(ty: 'ทอด'),
  oop(ty: 'อบ'),
  pak(ty: 'ผัก');

  const FoodType({required this.ty});
  final String ty;
}

enum Foodpic {menu1(namefood: "สุกี้", image: "assets/images/1.png"),
 menu2(namefood: "สลัด", image: "assets/images/2.png"),
 menu3(namefood: "สเต็กผัก", image: "assets/images/3.png"),
 menu4(namefood: "สเต็ก", image: "assets/images/4.png"),
 menu5(namefood: "เบอร์เกอร์", image: "assets/images/5.png"),
 menu6(namefood: "พิซซ่า", image: "assets/images/6.png"),
 menu7(namefood: "ราเมง", image: "assets/images/7.png");
 
  const Foodpic({required this.image, required this.namefood});
  final String image;
  final String namefood;
}

class FoodMenu {
  FoodMenu({
    required this.name,
    required this.type,
    required this.components,
    required this.price,
    required this.foodpic,});
  String name;
  String type;
  String components;
  int price;
  Foodpic foodpic;
}

List<FoodMenu> emp = [
  FoodMenu(
    name: "สุกี้",
    type: "ต้ม",
    components: "ไข่, ผัก, เนื้อสัตว์",
    price: 299,
    foodpic: Foodpic.menu1,
  ),
  FoodMenu(
    name: "สลัด",
    type: "ผัก",
    components: "แครอท, มะเขือเทศ, บร็อคโคลี่",
    price: 199,
    foodpic: Foodpic.menu2,
  ),
  FoodMenu(
    name: "สเต็กผัก",
    type: "ย่าง",
    components: "เนื้อสัตว์, ผัก, ซอส",
    price: 299,
    foodpic: Foodpic.menu3,
  ),
  FoodMenu(
    name: "สเต็ก",
    type: "ย่าง",
    components: "เนื้อสัตว์, เฟรนช์ฟราย, ซอส",
    price: 299,
    foodpic: Foodpic.menu4,
  ),
  FoodMenu(
    name: "เบอร์เกอร์",
    type: "ทอด",
    components: "เนื้อสัตว์, ผัก, ซอส, ขนมปัง",
    price: 299,
    foodpic: Foodpic.menu5,
  ),
  FoodMenu(
    name: "พิซซ่า",
    type: "อบ",
    components: "แป้ง, ชีส, ซอส",
    price: 299,
    foodpic: Foodpic.menu6,
  ),
  FoodMenu(
    name: "ราเมง",
    type: "ต้ม",
    components: "เนื้อสัตว์, เส้น, น้ำซุป",
    price: 299,
    foodpic: Foodpic.menu7,
  ),
];