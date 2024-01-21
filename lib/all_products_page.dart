import 'package:bonkers_corner/detailed_view.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});
  @override
  State<StatefulWidget> createState() => _ProductList();
}

class _ProductList extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: Icon(Icons.shopping_bag_outlined))
        ],
        title: Center(child: Text('Latest')),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 100 / 100,
        ),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailedView(
                            id: 1,
                          )));
            },
            child: Column(
              children: [
                Image.asset(
                  'assets/images/featured_1.jpeg',
                  width: 200,
                  height: 160,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    textAlign: TextAlign.left,
                    'Toy Story Oversized T-s...',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '₹1299 ',
                      style: TextStyle(
                          fontSize: 13, decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      '₹799',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailedView(
                            id: 2,
                          )));
            },
            child: Column(
              children: [
                Container(
                  width: 100,
                  child: Image.asset('assets/images/featured_2.jpeg'),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Marvel Venom Oversiz...',
                    style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '1299 ',
                      style: TextStyle(
                          fontSize: 13, decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      '799',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailedView(
                            id: 3,
                          )));
            },
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  width: 100,
                  child: Image.asset('assets/images/featured_3.jpeg'),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Together Fur-Ever Swe...',
                    style: TextStyle(color: Colors.grey.shade800, fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '1799 ',
                      style: TextStyle(
                          fontSize: 13, decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      '1199',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
    // },
  }
}

final List<String> imgList = [
  'assets/images/featured_1.jpeg',
  'assets/images/featured_2.jpeg',
  'assets/images/featured_3.jpeg',
];
