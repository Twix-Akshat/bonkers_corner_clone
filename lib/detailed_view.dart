import 'package:flutter/material.dart';

final List<String> imgList1 = [
  'assets/images/featured_1.jpeg',
  'assets/images/featured_1.jpeg',
];
final List<String> imgList2 = [
  'assets/images/featured_2.jpeg',
  'assets/images/featured_2.jpeg',
];
final List<String> imgList3 = [
  'assets/images/featured_3.jpeg',
  'assets/images/featured_3.jpeg',
];

class DetailedView extends StatefulWidget {
  const DetailedView({required this.id, super.key});

  final id;

  @override
  State<DetailedView> createState() => _DetailedView();
}

class _DetailedView extends State<DetailedView> {
  late PageController _pageController;

  @override
  void initState() {
    // super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: imgList1.length,
      pageSnapping: true,
      controller: _pageController,
      onPageChanged: (page) {
        setState(() {
          var activePage = page;
        });
      },
      itemBuilder: (context, pagePosition) {
        return Container(
          margin: EdgeInsets.all(10),
          child: Image.network(imgList1[pagePosition], fit: BoxFit.cover),
        );
      },
    );
  }
}
