import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 200,
                  // ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Women',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Men',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'StarWars',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Spongebob',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'TokiDoki',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Pokemon',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Faded Collection',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Dress',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'New In',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Special Price',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Shades of Winter',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'ACOSTA Collection',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Disney',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Marvel',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Anime',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Oversized T-Shirt',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Bottoms',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Tie-Dye',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Sweatshirts & Hoodies',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Jacket',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Kookie Collection',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Summer Collection',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )),
        ],
      ),
    );
  }
}
