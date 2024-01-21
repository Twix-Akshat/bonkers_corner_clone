import 'package:flutter/material.dart';

class ProfileIconPage extends StatelessWidget {
  const ProfileIconPage({super.key});
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
        title: Center(child: Text('Profile')),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [Text('ADD LATER')],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide.none, top: BorderSide.none)),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Text('My Orders'))
                ],
              ),
            ),
          ),
          Expanded(child: Row()),
          Expanded(child: Row()),
          Expanded(child: Row()),
          Expanded(child: Row()),
          Expanded(child: Row()),
        ],
      ),
    );
  }
}
