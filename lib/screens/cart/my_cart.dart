import 'package:flutter/material.dart';
import 'package:state_management/utils/extension.dart';
// import 'package:provider/provider.dart';
// import 'package:state_management/models/cart.dart';
part 'cart_list.dart';
part 'cart_total.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: _CartList(),
            ),
          ),
          _CartTotal()
        ],
      ),
    );
  }
}
