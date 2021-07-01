import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.softLight),
              image: AssetImage("assets/images/star.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage("assets/images/asm.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleImg(
                    radius: 60,
                    image: "person1",
                  ),
                  CircleImg(
                    radius: 60,
                    image: "person3",
                  ),
                ],
              ),
              Text(
                "you both like each other , you ask somthing about intrest",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Say \"Hello\"",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                        color: HexColor("#1e3638"),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Keep Swiping",
                            style: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircleImg extends StatelessWidget {
  final String? image;
  final double? radius;

  const CircleImg({Key? key, this.image, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(
        "assets/images/$image.jpg",
      ),
    );
  }
}
