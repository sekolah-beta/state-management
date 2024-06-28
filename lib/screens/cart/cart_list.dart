part of 'my_cart.dart';

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This gets the current state of CartModel and also tells Flutter
    // to rebuild this widget when CartModel notifies listeners (in other words,
    // when it changes).
    // CartModel cart = context.watch<CartModel>();

    // for empty cart
    // if (cart.items.isEmpty) {
    return Image.network(
      'https://cdn-icons-png.flaticon.com/512/7486/7486747.png',
      fit: BoxFit.contain,
    );
    // }

    // return ListView.builder(
    //   itemCount: cart.items.length,
    //   itemBuilder: (context, index) => ListTile(
    //     contentPadding: EdgeInsets.zero,
    //     leading: const Icon(Icons.fastfood),
    //     trailing: IconButton(
    //       icon: const Icon(Icons.remove_circle_outline),
    //       onPressed: () {
    //         cart.remove(cart.items[index]);
    //       },
    //     ),
    //     title: Text(
    //       cart.items[index].name,
    //       style: const TextStyle(fontSize: 18),
    //     ),
    //   ),
    // );
  }
}
