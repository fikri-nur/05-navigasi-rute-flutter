import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: 'iPhone 13 Pro', image: 'assets/images/iphone.jpg', spec: 'Apple A15 Bionic, 256GB 6GB RAM', price: '18.499.000'),
    Item(name: 'Samsung Galaxy S22', image: 'assets/images/samsung.jpg', spec: 'Snapdragon 8 Gen 1, 256GB 8GB RAM', price: '12.999.000'),
    Item(name: 'Xiaomi Mi 11 Ultra', image: 'assets/images/xiaomi.jpg', spec: 'Snapdragon 888 5G, 256GB 8GB RAM', price: '16.999.000'),
    Item(name: 'Oppo Find X3 Pro', image: 'assets/images/oppo.jpg', spec: 'Snapdragon 888 5G, 256GB 8GB RAM', price: '14.999.000')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Smartphone \nAmiruddin Fikri Nur (2031710163)'),
      ),
      body: Container(
          margin: const EdgeInsets.all(8),
          child: MyListView(
            items: items,
            page: '/item',
          )),
    );
  }
}
