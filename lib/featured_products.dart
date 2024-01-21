import 'package:bonkers_corner/all_products_page.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/featured_1.jpeg',
  'assets/images/featured_2.jpeg',
  'assets/images/featured_3.jpeg',
];

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: Container(
          height: 200,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(
                shape: Border(bottom: BorderSide.none),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/images/featured_1.jpeg'),
                    ),
                    Text(
                      'Toy Story Oversized T-s...',
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12),
                    ),
                    Row(
                      children: [
                        Text(
                          '1299 ',
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          '799',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: Border(bottom: BorderSide.none),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/images/featured_2.jpeg'),
                    ),
                    Text(
                      'Marvel Venom Oversiz...',
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12),
                    ),
                    Row(
                      children: [
                        Text(
                          '1299 ',
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          '799',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: Border(bottom: BorderSide.none),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/images/featured_3.jpeg'),
                    ),
                    Text(
                      'Together Fur-Ever Swe...',
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12),
                    ),
                    Row(
                      children: [
                        Text(
                          '1799 ',
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          '1199',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: Border(bottom: BorderSide.none),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/images/featured_1.jpeg'),
                    ),
                    Text(
                      'Toy Story Oversized T-s...',
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12),
                    ),
                    Row(
                      children: [
                        Text(
                          '1299 ',
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          '799',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: Border(bottom: BorderSide.none),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/images/featured_2.jpeg'),
                    ),
                    Text(
                      'Marvel Venom Oversiz...',
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 12),
                    ),
                    Row(
                      children: [
                        Text(
                          '1299 ',
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          '799',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                shape: Border(bottom: BorderSide.none),
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductList()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        child: Image.asset('assets/images/featured_3.jpeg'),
                      ),
                      Text(
                        'Together Fur-Ever Swe...',
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 12),
                      ),
                      Row(
                        children: [
                          Text(
                            '1799 ',
                            style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text(
                            '1199',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
