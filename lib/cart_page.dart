import 'package:bonkers_corner/drawer.dart';
import 'package:bonkers_corner/home_page.dart';
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Message"),
                    content: const Text(
                        "Your cart is empty , add something to your cart."),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: const Text("OK"),
                        ),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.shopping_bag_outlined))
        ],
        title: const Center(child: Text('Order')),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/image_for_cart_page.jpeg',
                width: 200,
              ),
            ),
            const Center(
              child: Text(
                'Your cart is Empty !',
                style: TextStyle(color: Colors.black, fontSize: 34),
              ),
            ),
            const Center(
              child: Text(
                'Looks like you havent made your ',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
            ),
            const Center(
              child: Text(
                'order yet',
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: const Text(
                      '     SHOP NOW      ',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(Icons.home),
            )),
          ),
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )),
          ),
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu),
            )),
          ),
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              icon: const Icon(Icons.shopping_cart_rounded),
            )),
          ),
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            )),
          ),
        ],
      ),
    );
  }
}
