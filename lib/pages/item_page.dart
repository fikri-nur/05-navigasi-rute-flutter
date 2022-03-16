import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Barang: ' + itemArgs.name),
      ),
      body: Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset(itemArgs.image)),
        Expanded(child: Text("Nama:" + itemArgs.name)),
        Expanded(child: Text("Spesifikasi:\n" +itemArgs.spec)),
        Expanded(
            child: Text(
          "Harga:\nRp " + itemArgs.price,
        ))
      ],
      ),
    ));
  }
}
