import 'package:bonkers_corner/carousel.dart';
import 'package:bonkers_corner/cart_page.dart';
import 'package:bonkers_corner/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BONKERS",
          style: TextStyle(fontFamily: 'LM', fontSize: 30),
        ),
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Text(
            "CORNER",
            style: TextStyle(fontFamily: 'LM', fontSize: 20),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Icon(Icons.home_filled, color: Colors.black, size: 32),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Women",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Men",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Collections",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ImageSliderDemo(),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'FEATURED PRODUCTS',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          // Expanded(
          //   child: FeaturedProducts(),
          // ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.home),
            )),
          ),
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )),
          ),
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              icon: Icon(Icons.menu),
            )),
          ),
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              icon: Icon(Icons.shopping_cart_rounded),
            )),
          ),
          Expanded(
            child: Container(
                child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            )),
          ),
        ],
      ),
    );
  }
}
