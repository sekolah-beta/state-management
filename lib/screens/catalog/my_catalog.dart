import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:state_management/app_router.dart';
import 'package:state_management/utils/extension.dart';
import '../../models/catalog.dart';
// import 'package:state_management/models/cart.dart';
// import 'package:provider/provider.dart';

part 'my_list_item.dart';

class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Makanan'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => context.push(AppRoute.cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: CatalogModel.kListItem.length,
        itemBuilder: (context, index) => _MyListItem(CatalogModel.kListItem[index]),
      ),
    );
  }
}
