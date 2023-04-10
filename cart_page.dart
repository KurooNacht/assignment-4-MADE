import 'package:flutter/material.dart';
import 'package:test/first_page.dart';
import 'cart.dart';

class CartPage extends StatelessWidget {
  final Cart cart;

  const CartPage({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  final cartItem = cart.items[index];
                  return ListTile(
                    title: Text(cartItem.menuItem.title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Amount: ${cartItem.totalAmount}'),
                        Text('Notes: ${cartItem.notes}'),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/first');
                  },
                  child: Text('Add More'),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      cart.clear();
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    child: Text(
                      'Order',
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
