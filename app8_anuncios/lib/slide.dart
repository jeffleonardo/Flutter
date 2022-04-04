import 'package:flutter/material.dart';

class Slide extends StatelessWidget {

  final String image;
  final bool activePage;

  const Slide({Key? key, required this.image, required this.activePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double top = this.activePage ? 50 : 150;
    final double blur = this.activePage ? 30 : 0;
    final double affset = this.activePage ? 20 : 0;

    return AnimatedContainer(
      duration: Duration(milliseconds: 750),
      curve: Curves.easeInQuad,
      margin: EdgeInsets.only(top: top, bottom: 100, right: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            blurRadius: blur,
            offset: Offset(affset, affset)
          )
        ]),
    );
  }
}