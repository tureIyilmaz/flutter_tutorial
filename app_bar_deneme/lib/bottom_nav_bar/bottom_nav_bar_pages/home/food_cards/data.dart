import 'dart:math';

import 'package:flutter/material.dart';

class FoodModel {
  final String categoryName;
  final String name;
  final Image icon;
  final String explanation;
  final double price;
  final bool discount;

  FoodModel.FoodItem({
    required this.categoryName,
    required this.name,
    required this.icon,
    required this.explanation,
    required this.price,
    required this.discount,
  });
}

Random random = Random();

List<FoodModel> foodData = [
  FoodModel.FoodItem(
    categoryName: "Çorba",
    name: "Brokoli Çorbası",
    icon: Image.asset('assets/img/menu/baslangiclar/brokoli.png'),
    explanation:
        "Sağlıklı ve lezzetli brokoli çorbası, 300gr ve yanında ekmek ile.",
    price: 49.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Çorba",
    name: "Domates Çorbası",
    icon: Image.asset('assets/img/menu/baslangiclar/domates.png'),
    explanation:
        "Taze domateslerle hazırlanmış çorba, 300gr ve yanında ekmek ile.",
    price: 39.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Çorba",
    name: "Ezogelin Çorbası",
    icon: Image.asset('assets/img/menu/baslangiclar/ezogelin.png'),
    explanation:
        "Klasik ve doyurucu ezogelin çorbası, 300gr ve yanında ekmek ile.",
    price: 44.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Çorba",
    name: "Mercimek Çorbası",
    icon: Image.asset('assets/img/menu/baslangiclar/mercimek.png'),
    explanation:
        "Besleyici ve lezzetli mercimek çorbası, 300gr ve yanında ekmek ile.",
    price: 34.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Çorba",
    name: "Yayla Çorbası",
    icon: Image.asset('assets/img/menu/baslangiclar/yayla.png'),
    explanation:
        "Ferahlatıcı ve hafif yayla çorbası, 300gr ve yanında ekmek ile.",
    price: 39.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Çorba",
    name: "Tavuk Çorbası",
    icon: Image.asset('assets/img/menu/baslangiclar/tavuk.png'),
    explanation: "Protein dolu tavuk çorbası, 300gr ve yanında ekmek ile.",
    price: 59.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Salata",
    name: "Akdeniz Salata",
    icon: Image.asset('assets/img/menu/salatalar/akdeniz_salata.png'),
    explanation: "Mevsim yeşillikleri, beyaz peynir, zeytin.",
    price: 89.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Salata",
    name: "Caşnigir Salata",
    icon: Image.asset('assets/img/menu/salatalar/caşnigir_salata.png'),
    explanation:
        "Marul, havuç, kırmızılahana, turşu, domates, roka, maydanoz, salatalık, nar ekşisi.",
    price: 84.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Salata",
    name: "Falafel Salata",
    icon: Image.asset('assets/img/menu/salatalar/falafel_salata.png'),
    explanation: "Mevsim yeşillikleri, falafel toplar.",
    price: 94.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Salata",
    name: "Mevsim Salata",
    icon: Image.asset('assets/img/menu/salatalar/mevsim_salata.png'),
    explanation: "Mevsim yeşillikleri, özel soslar.",
    price: 59.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Salata",
    name: "Tavuklu Salata",
    icon: Image.asset('assets/img/menu/salatalar/tavuklu_salata.png'),
    explanation:
        "Marul, havuç, kırmızılahana, turşu, domates, roka, maydanoz, salatalık, nar ekşisi.",
    price: 99.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Salata",
    name: "Ton Balıklı Salata",
    icon: Image.asset('assets/img/menu/salatalar/ton_balikli_salata.png'),
    explanation: "Mevsim yeşillikleri, ton balığı.",
    price: 109.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Pizza",
    name: "Hamilton Pizza",
    icon: Image.asset('assets/img/menu/pizzalar/hamilton.png'),
    explanation:
        "Özel pizza sosu, mozzarella peyniri, beyaz peynir, mantar, yeşil biber, siyah zeytin, domates.",
    price: 189.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Pizza",
    name: "Houston Rockets Pizza",
    icon: Image.asset('assets/img/menu/pizzalar/houston_rockets.png'),
    explanation:
        "Özel pizza sosu, mozzarella peyniri, pepperoni, sosis, yeşil biber, mantar, siyah zeytin.",
    price: 179.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Pizza",
    name: "Los Galacticos Pizza",
    icon: Image.asset('assets/img/menu/pizzalar/los_galacticos.png'),
    explanation:
        "Özel pizza sosu, mozzarella peyniri, küp kıyma, mantar, kırmızı köz biber, jalapeno (acı Meksika biberi).",
    price: 189.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Pizza",
    name: "Pizza Kentucky",
    icon: Image.asset('assets/img/menu/pizzalar/pizza_kentucky.png'),
    explanation:
        "Özel pizza sosu, mozzarella peyniri, ton balığı, karides, soğan, mısır.",
    price: 199.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Pizza",
    name: "Super Clasico Pizza",
    icon: Image.asset('assets/img/menu/pizzalar/super_clasico.png'),
    explanation:
        "Özel pizza sosu, mozzarella peyniri, pepperoni, sosis, yeşil biber, mantar, mısır.",
    price: 179.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Pizza",
    name: "Verstappen Pizza",
    icon: Image.asset('assets/img/menu/pizzalar/verstappen.png'),
    explanation:
        "Özel pizza sosu, mozzarella peyniri, et döner, domates, soğan.",
    price: 209.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Burger",
    name: "Bufolo Burger",
    icon: Image.asset('assets/img/menu/burgerler/bufolo_burger.png'),
    explanation:
        "150 gr. hamburger köftesi, cheddar peyniri, acılı Smash sos, dilimlenmiş kornişon turşu.",
    price: 89.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Burger",
    name: "Cheese Burger",
    icon: Image.asset('assets/img/menu/burgerler/cheese_burger.png'),
    explanation:
        "150 gr. hamburger köftesi, Amerikan cheddar peyniri, dilimlenmiş kornişon turşu.",
    price: 99.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Burger",
    name: "Classic Burger",
    icon: Image.asset('assets/img/menu/burgerler/classic_burger.png'),
    explanation:
        "150 gr. hamburger köftesi, smash sos, dilimlenmiş kornişon turşu.",
    price: 79.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Burger",
    name: "Mexico Burger",
    icon: Image.asset('assets/img/menu/burgerler/mexico_burger.png'),
    explanation:
        "150 gr. hamburger köftesi, acı jalapeno biberleri, salsa sos, cheddar peyniri.",
    price: 119.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "İçecek",
    name: "Kola",
    icon: Image.asset('assets/img/menu/içecekler/cola.png'),
    explanation: "Soğuk ve ferahlatıcı kola.",
    price: 14.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "İçecek",
    name: "Ayran",
    icon: Image.asset('assets/img/menu/içecekler/ayran.png'),
    explanation: "Doğal ve serinletici ayran.",
    price: 9.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "İçecek",
    name: "Fanta",
    icon: Image.asset('assets/img/menu/içecekler/fanta.png'),
    explanation: "Soğuk ve ferahlatıcı fanta.",
    price: 19.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "İçecek",
    name: "Sprite",
    icon: Image.asset('assets/img/menu/içecekler/sprite.png'),
    explanation: "Soğuk ve ferahlatıcı fanta.",
    price: 19.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Tatlı",
    name: "Trileçe",
    icon: Image.asset(
      'assets/img/menu/tatlılar/trileçe.png',
    ),
    explanation:
        "Yumuşacık keki ve hafif sütlü şerbetiyle Balkan mutfağının en lezzetli tatlılarından biri.",
    price: 59.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Tatlı",
    name: "Profiterol",
    icon: Image.asset(
      'assets/img/menu/tatlılar/profiterol.png',
    ),
    explanation:
        "İçi krema dolu hamur topları ve üzeri çikolata sosuyla kaplı nefis bir tatlı.",
    price: 49.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Tatlı",
    name: "Mag",
    icon: Image.asset(
      'assets/img/menu/tatlılar/mag.png',
    ),
    explanation:
        "Kakaolu kek parçaları, krema ve meyve sosuyla hazırlanan hafif bir tatlı.",
    price: 74.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Tatlı",
    name: "Kıbrıs Tatlısı",
    icon: Image.asset(
      'assets/img/menu/tatlılar/kıbrıs.png',
    ),
    explanation:
        "İrmik ve cevizle hazırlanan keki, üzerindeki kreması ve Hindistan cevizi ile mükemmel bir uyum.",
    price: 84.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Ana Yemek",
    name: "Izgara Tavuk",
    icon: Image.asset('assets/img/menu/anayemekler/izgara_tavuk.png'),
    explanation: "Izgarada pişirilmiş tavuk göğsü.",
    price: 79.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Ana Yemek",
    name: "Köfte",
    icon: Image.asset('assets/img/menu/anayemekler/kofte.png'),
    explanation: "Klasik Türk köftesi.",
    price: 89.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Ana Yemek",
    name: "Lahmacun",
    icon: Image.asset('assets/img/menu/anayemekler/lahmacun.png'),
    explanation: "Kıymalı ve baharatlı lahmacun.",
    price: 24.99,
    discount: random.nextBool(),
  ),
  FoodModel.FoodItem(
    categoryName: "Ana Yemek",
    name: "Adana Kebap",
    icon: Image.asset('assets/img/menu/anayemekler/adana_kebap.png'),
    explanation: "Baharatlı ve lezzetli Adana kebap.",
    price: 69.99,
    discount: random.nextBool(),
  ),
];
