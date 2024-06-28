part of 'my_cart.dart';

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.2),
      height: 100,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Consumer<CartModel>(
            //   builder: (context, cart, child) => Text(
            //     // cart.totalPrice.getCurrency(),
            //     0.getCurrency(),
            //     style: const TextStyle(fontSize: 30),
            //   ),
            // ),
            Text(
              0.getCurrency(),
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(width: 24),
            FilledButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Buying not supported yet.')));
              },
              child: const Text('BUY'),
            ),
          ],
        ),
      ),
    );
  }
}
