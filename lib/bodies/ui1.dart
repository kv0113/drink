import 'dart:ui';

import 'package:flutter/material.dart';

import '../lists/level.dart';

class Ui1 extends StatefulWidget {
  const Ui1({Key? key}) : super(key: key);

  @override
  State<Ui1> createState() => _Ui1State();
}

class _Ui1State extends State<Ui1> {
  int selectIndex = 0;
  int Indexselect = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/yello.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(Icons.arrow_back_ios_new),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.favorite, color: Colors.red)),
                    ],
                  ),
                ),
                BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                    child: Center(
                      child: Image.asset('assets/image/mangoshake2.png',
                          height: 220, width: 236),
                    )),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Fruit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: Colors.yellow),
                    ),
                    const Text(
                      "Milkshake",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: Colors.yellow),
                    ),
                    Row(

                      children: const [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star_border),
                        Text(
                          "(2000 Reviews)",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Sugar Level",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: levellist.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectIndex = index;
                                });
                              }, // anonymous function
                              child: Container(
                                width: 70,
                                margin: const EdgeInsets.only(right: 19),
                                decoration: BoxDecoration(
                                  color: index == selectIndex
                                      ? Colors.yellow.withOpacity(0.4)
                                      : Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: index == selectIndex
                                          ? Colors.black.withOpacity(0.2)
                                          : Colors.black.withOpacity(0.2)),
                                ),
                                child: Center(
                                    child: Text(
                                        levellist.elementAt(index)["level"])),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Choice Size",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: levellist.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  Indexselect = index;
                                });
                              }, // anonymous function
                              child: Container(
                                width: 70,
                                margin: const EdgeInsets.only(right: 19),
                                decoration: BoxDecoration(
                                  color: index == Indexselect
                                      ? Colors.yellow.withOpacity(0.4)
                                      : Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: index == Indexselect
                                          ? Colors.black.withOpacity(0.2)
                                          : Colors.black.withOpacity(0.2)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(sizellist.elementAt(index)["level"]),
                                    Text(sizellist.elementAt(index)["size"]),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, right: 20, left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text("--",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey)),
                                  Text("1",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                  Text("+",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey)),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    const MaterialStatePropertyAll(Colors.yellow),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                fixedSize: const MaterialStatePropertyAll(
                                  Size.fromWidth(150),
                                ),
                              ),
                              child: const Text(
                                "Add To Cart",
                                style: TextStyle(color: Colors.black),
                              ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
