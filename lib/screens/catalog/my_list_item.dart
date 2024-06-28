part of 'my_catalog.dart';

class _MyListItem extends StatelessWidget {
  const _MyListItem(this.item);
  final Item item;

  @override
  Widget build(BuildContext context) {
    // final isInCart = context.select<CartModel, bool>(
    //   (cart) => cart.items.contains(item),
    // );
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 20, right: 10),
      title: Text(item.name),
      subtitle: Text(item.price.getCurrency()),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Color(item.hexColor).withOpacity(0.4),
        child: const Icon(Icons.fastfood),
      ),
      trailing: IconButton(
        // onPressed: isInCart
        //     ? null
        //     : () {
        //         var cart = context.read<CartModel>();
        //         cart.add(item);
        //       },
        // icon: Icon((isInCart ? Icons.check : Icons.add)),
        onPressed: () {},
        icon: const Icon(Icons.add),
      ),
    );
  }
}
