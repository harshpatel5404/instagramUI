import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final setimg;

  const ImageContainer({Key? key, this.setimg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: MediaQuery.of(context).size.height * 0.47,
      width: MediaQuery.of(context).size.width * 0.80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35), color: Colors.blue),
      child: Image.asset("assets/images/person${setimg + 1}.jpg",
      // child: Image.asset("assets/images/person1.jpg",
          fit: BoxFit.cover),
    );
  }
}
