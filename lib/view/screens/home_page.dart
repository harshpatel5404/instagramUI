import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:instagramui/view/screens/second_screen.dart';
import 'package:instagramui/view/screens/third_screen.dart';
import 'package:instagramui/view/widgets/Iconcontainer.dart';
import 'package:instagramui/view/widgets/textcontainer.dart';
import 'package:instagramui/widgets/profile.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int setimg = 1;

  Widget stories(index) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            setimg = index;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("assets/images/person${index + 1}.jpg"),
                    fit: BoxFit.fill)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor("#03141a"),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThirdScreen()));
                      },
                      child: SvgPicture.asset(
                        "assets/images/list.svg",
                        color: Colors.white,
                        height: 20.0,
                        width: 15.0,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          // color: HexColor("#1483a8"),
                          color: Colors.cyanAccent[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Text(
                            "Malang, ID",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Icon(Icons.arrow_downward, color: Colors.white),
                        SvgPicture.asset(
                          "assets/images/arrow.svg",
                          height: 13.0,
                          color: Colors.white,
                          allowDrawingOutsideViewBox: true,
                        )
                      ],
                    ),
                    // Icon(Icons.notifications_none_rounded, color: Colors.white)
                    Stack(
                      children: <Widget>[
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        // SvgPicture.asset(
                        //   "assets/images/noti.svg",
                        //   height: 18.0,
                        //   color: Colors.white,
                        //   allowDrawingOutsideViewBox: true,
                        // ),
                        Positioned(
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.cyanAccent[400],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: BoxConstraints(
                              minWidth: 12,
                              minHeight: 12,
                            ),
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Container(
                  decoration: BoxDecoration(
                      color: HexColor("#1c282b"),
                      borderRadius: BorderRadius.circular(10)),
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              // color: HexColor("#1483a8"),
                              color: Colors.cyanAccent[400],
                              size: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Find Partner...",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 16),
                            ),
                          ],
                        ),
                      
                      IconContainer(
                      bgcolor:  Colors.cyanAccent[400],
                      iconcolor: Colors.black,
                      size: 35.0,
                      iconsize: 25.0,
                      icon: Icons.tune,
                      radius: 5.0,
                    ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 65,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return stories(index);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen(setimg: setimg,)));
                    },
                    child: ImageContainer(
                      setimg: setimg,
                    ) ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child:TextContainer()
                    )
                ],
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width * 0.45,
                // color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconContainer(
                      bgcolor: HexColor("#26373b"),
                      iconcolor: Colors.red,
                      size: 40.0,
                      iconsize: 25.0,
                      icon: Icons.close,
                      radius: 10.0,
                    ),
                    IconContainer(
                      bgcolor: Colors.cyan,
                      iconcolor: Colors.white,
                      size: 60.0,
                      iconsize: 30.0,
                      icon: Icons.favorite_rounded,
                      radius: 18.0,
                    ),
                    IconContainer(
                      bgcolor: HexColor("#1e3638"),
                      iconcolor: Colors.white,
                      size: 40.0,
                      iconsize: 25.0,
                      icon: Icons.star_rounded,
                      radius: 10.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: HexColor("#1e2b2e"),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                splashRadius: 20,
                icon: Image.asset(
                  "assets/images/home.png",
                  height: 23,
                  color: Colors.cyan[700],
                ),
                onPressed: () {}),
            IconButton(
                icon: Image.asset(
                  "assets/images/chat.png",
                  height: 23,
                  color: Colors.grey,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.grey,
                  size: 27,
                ),
                onPressed: () {}),
            IconButton(
                icon: SvgPicture.asset(
                  "assets/images/widget.svg",
                  color: Colors.grey,
                  height: 20.0,
                  width: 20.0,
                  allowDrawingOutsideViewBox: true,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

