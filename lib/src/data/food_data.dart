import 'package:flutter/material.dart';
import '../models/food.dart';
import 'category_data.dart';

final foods = [
  Food(
      id: 1,
      name: "Salmon",
      description: "20000 kip",
      imagePath:  'https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg',
      price: 3000,
      category: "ປາແຫ້ງ"
  ),
  Food(
      id: 2,
      name: "ຜັກກາດ",
      description: "30,000 kip",
      imagePath:  'https://images.unsplash.com/photo-1447175008436-054170c2e979?ixlib=rb-1.2.1&auto=format&fit=crop&w=1161&q=80',
      price: 3000,
      category: "ຜັກກາດ"
  ),
  Food(
      id: 3,
      name: "ໄສ້ກອກ",
      description: "15,000 kip",
      imagePath:  'https://images.unsplash.com/photo-1551135020-39e4ca508d9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      price: 3000,
      category: "ຊີ້ນສະຫວັນ"
  ),
  Food(
      id: 4,
      name: "ຊີ້ນສະຫວັນ",
      description: "15,000 kip",
      imagePath:  'https://images.unsplash.com/photo-1580980906245-af3b357dcc84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      price: 3000,
      category: "ຊີ້ນສະຫວັນ"
  )
];