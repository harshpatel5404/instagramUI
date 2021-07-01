import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:instagramui/view/widgets/textcontainer.dart';
import 'package:instagramui/widgets/profile.dart';

class SecondScreen extends StatefulWidget {
  final setimg;
  const SecondScreen({Key? key, this.setimg}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor("#03141a"),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert, color: Colors.white),
                  )
                ],
              ),
              ImageContainer(
                  setimg: widget.setimg,
              ),
              TextContainer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Depending on the subject or assignment, you could describe the person's physical appearance",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Interest",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 79,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[900],
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "Travelling",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[900],
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "Singing",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[900],
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "Singing",
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[900],
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "Reading",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 25,
                        width: 67,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[900],
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "Driving",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[900],
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "Photography",
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
