import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff17181A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.18,
                    width: width * 0.9,
                    decoration: new BoxDecoration(
                      color: Color(0xff333536),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Text(
                              "APPLE OTC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.28,
                            ),
                            Text(
                              "\$1.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "+\$0.80",
                              style: TextStyle(
                                color: Color(0xff1DCC98),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "OPEN",
                              style: TextStyle(
                                color: Color(0xff908FEC),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.36,
                            ),
                            Text(
                              "CLOSE",
                              style: TextStyle(
                                color: Color(0xff908FEC),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "13 : 18 : 47   167.198",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "13 : 20 : 00   167.300",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.18,
                    width: width * 0.9,
                    decoration: new BoxDecoration(
                      color: Color(0xff333536),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Text(
                              "APPLE OTC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.28,
                            ),
                            Text(
                              "\$1.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "+\$0.80",
                              style: TextStyle(
                                color: Color(0xff1DCC98),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "OPEN",
                              style: TextStyle(
                                color: Color(0xff908FEC),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.36,
                            ),
                            Text(
                              "CLOSE",
                              style: TextStyle(
                                color: Color(0xff908FEC),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "13 : 18 : 47   167.198",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "13 : 20 : 00   167.300",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.18,
                    width: width * 0.9,
                    decoration: new BoxDecoration(
                      color: Color(0xff333536),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Text(
                              "APPLE OTC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.28,
                            ),
                            Text(
                              "\$1.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "+\$0.80",
                              style: TextStyle(
                                color: Color(0xff1DCC98),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "OPEN",
                              style: TextStyle(
                                color: Color(0xff908FEC),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.36,
                            ),
                            Text(
                              "CLOSE",
                              style: TextStyle(
                                color: Color(0xff908FEC),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "13 : 18 : 47   167.198",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "13 : 20 : 00   167.300",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.18,
                    width: width * 0.9,
                    decoration: new BoxDecoration(
                      color: Color(0xff333536),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Text(
                              "APPLE OTC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.28,
                            ),
                            Text(
                              "\$1.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "+\$0.80",
                              style: TextStyle(
                                color: Color(0xff1DCC98),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "OPEN",
                              style: TextStyle(
                                color: Color(0xff908FEC),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.36,
                            ),
                            Text(
                              "CLOSE",
                              style: TextStyle(
                                color: Color(0xff908FEC),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "13 : 18 : 47   167.198",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "13 : 20 : 00   167.300",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
