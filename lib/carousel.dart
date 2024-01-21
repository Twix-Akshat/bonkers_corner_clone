import 'package:bonkers_corner/all_products_page.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/carousel_image-1.jpeg',
  'assets/images/carousel_image-2.jpeg',
  'assets/images/carousel_image-3.jpeg',
];

class ImageSliderDemo extends StatefulWidget {
  @override
  State<ImageSliderDemo> createState() => _ImageSliderDemoState();
}

class _ImageSliderDemoState extends State<ImageSliderDemo> {
  late PageController _pageController;

  @override
  void initState() {
    // super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: imgList.length,
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
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductList(),
                      ));
                },
                child: Image.network(imgList[pagePosition], fit: BoxFit.cover)),
          );
        });
  }
}
