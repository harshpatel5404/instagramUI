import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
                      height: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Natasha Siluna",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                height: 25,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.pink[500]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      "21",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Bimling, Malang",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    );
                
  }
}