import 'dart:math';

/// In a real app, this might be backed by a backend and cached on device.
/// In this sample app, the catalog is procedurally generated and infinite.
class CatalogModel {
  static List<String> kItemNames = [
    'Nasi Goreng',
    'Cumi Asam Manis',
    'Cumi Lada Hitam',
    'Udang Asam Manis',
    'Udang Lada Hitam',
    'Ayam Geprek',
    'Lele',
    'Bebek',
    'Telor',
    'Mie Ayam Original',
    'Mie Ayam Ceker',
    'Mie Ayam Bakso',
    'Bakso Original',
    'Bakso Urat',
    'Bakso Tetelan',
    'Tahu Telor',
    'Soto Ayam',
    'Soto Daging',
    'Sate Ayam',
    'Sate Kambing',
    'Gule Kambing',
  ];
  static List<Item> kListItem = List.generate(
    kItemNames.length,
    (index) => Item(
      id: index,
      name: kItemNames[index],
      price: Random().nextInt(30000) + 10000,
      hexColor: (Random().nextDouble() * 0xFFFFFF).toInt(),
    ),
  );

  Item getById(int id) => kListItem.firstWhere((element) => element.id == id);
}

class Item {
  final int id;
  final String name;
  final int hexColor;
  final int price;

  Item({required this.id, required this.name, this.price = 42, required this.hexColor});
}
