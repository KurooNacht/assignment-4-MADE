import 'package:flutter/material.dart';
import 'cart.dart';
import 'menu.dart';
import 'second_page.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Warteg AW',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: Text('Pesan Sekarang'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<Menu> _menu = [
    Menu(title: 'Nasi uduk', amount: 6000),
    Menu(title: 'Ayam Goreng', amount: 7000),
    Menu(title: 'Es Teh', amount: 5000)
  ];

  final Cart _cart = Cart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text(
          'Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CartPage(
                        cart: _cart,
                      )));
        },
        child: Icon(Icons.shopping_cart),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          elevation: 2,
          child: ListTile(
              title: Text(_menu[index].title),
              trailing: Text('Rp. ${_menu[index].amount}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(
                            menuItem: _menu[index],
                            cart: _cart,
                          )),
                );
              }),
        ),
        itemCount: _menu.length,
      ),
    );
  }
}
