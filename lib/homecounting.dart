import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'deposit.dart';
import 'orders.dart';
import 'profile.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class counting extends StatefulWidget {
  @override
  State<counting> createState() => _countingState();
}

class _countingState extends State<counting> {
  late List<charts.Series<Pollution, String>> _seriesData;

  _generateData() {
    var data1 = [
      new Pollution(1980, 'Mo', 200),
      new Pollution(1980, 'Tu', 220),
      new Pollution(1980, 'We', 80),
      new Pollution(1980, 'Th', 240),
      new Pollution(1980, 'Fr', 120),
      new Pollution(1980, 'Sa', 160),
      new Pollution(1980, 'Su', 280),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff908FEC)),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = <charts.Series<Pollution, String>>[];
    _generateData();
  }

  late double height;
  late double width;
  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff17181A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    "\$31,082",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ".20",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.15,
                  ),
                  Container(
                    height: height * 0.03,
                    width: width * 0.18,
                    decoration: new BoxDecoration(
                      color: Color(0xffF61C7A),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Live",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: SingleChildScrollView(
                                child: Container(
                                  height: height * 0.7,
                                  width: width * 0.8,
                                  color: Color(0xff333536),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: width * 0.04,
                                              top: height * 0.02,
                                            ),
                                            child: Icon(
                                              Icons.clear,
                                              color: Colors.grey.shade200,
                                              size: 15.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Accounts",
                                            style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: 25.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "You can switch to a different account type",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: height * 0.2,
                                            width: width * 0.6,
                                            decoration: new BoxDecoration(
                                              color: Colors.grey.shade800,
                                              borderRadius:
                                                  new BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(20.0),
                                                topRight:
                                                    const Radius.circular(20.0),
                                                bottomLeft:
                                                    const Radius.circular(20.0),
                                                bottomRight:
                                                    const Radius.circular(20.0),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: height * 0.02,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      "Live Account",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xffF61C7A),
                                                        fontSize: 15.0,
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Text(
                                                          "Balance",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff908FEC),
                                                            fontSize: 15.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          "\$ 0.00",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: height * 0.07,
                                                      width: width * 0.35,
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(
                                                          //       builder: (context) =>
                                                          //           profile()),
                                                          // );
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary:
                                                              Color(0xff1B74E6),
                                                          shape:
                                                              new RoundedRectangleBorder(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .circular(
                                                                    25.0),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Deposite",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15.0),
                                                        ),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: height * 0.2,
                                            width: width * 0.6,
                                            decoration: new BoxDecoration(
                                              color: Color(0xff17181A),
                                              borderRadius:
                                                  new BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(20.0),
                                                topRight:
                                                    const Radius.circular(20.0),
                                                bottomLeft:
                                                    const Radius.circular(20.0),
                                                bottomRight:
                                                    const Radius.circular(20.0),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: height * 0.02,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      "Live Account",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xffF61C7A),
                                                        fontSize: 15.0,
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Text(
                                                          "Balance",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff908FEC),
                                                            fontSize: 15.0,
                                                          ),
                                                        ),
                                                        Text(
                                                          "\$ 1013.00",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height * 0.03,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: height * 0.07,
                                                      width: width * 0.35,
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        deposit()),
                                                          );
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary:
                                                              Color(0xff1B74E6),
                                                          shape:
                                                              new RoundedRectangleBorder(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .circular(
                                                                    25.0),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Deposite",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15.0),
                                                        ),
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
                                        height: height * 0.04,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: height * 0.07,
                                            width: width * 0.35,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(builder: (context) => home1()),
                                                // );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffF61C7A),
                                                shape:
                                                    new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Text(
                                                "CANCEL",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.07,
                                            width: width * 0.35,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          deposit()),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1B74E6),
                                                shape:
                                                    new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Text(
                                                "DONE",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.18,
                      decoration: new BoxDecoration(
                        color: Color(0xff908FEC),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(50.0),
                          topRight: const Radius.circular(50.0),
                          bottomLeft: const Radius.circular(50.0),
                          bottomRight: const Radius.circular(50.0),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          Text(
                            "Deposit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    "\$1,208.24",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "(Today)",
                    style: TextStyle(
                      color: Color(0xffF61C7A),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.02,
                    ),
                    height: height * 0.08,
                    width: width * 0.45,
                    decoration: new BoxDecoration(
                      color: Color(0xff333536),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Image(
                          image: AssetImage("images/image2.png"),
                          height: height * 0.04,
                          fit: BoxFit.cover,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "EUR/USD",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Digital",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.clear,
                          color: Color(0xffF61C7A),
                          size: 20.0,
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: SingleChildScrollView(
                                child: Container(
                                  height: height * 0.5,
                                  width: width * 0.8,
                                  color: Color(0xff333536),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: width * 0.04,
                                              top: height * 0.02,
                                            ),
                                            child: Icon(
                                              Icons.clear,
                                              color: Colors.grey.shade200,
                                              size: 15.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Trade Countdown",
                                            style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // margin: EdgeInsets.only(
                                            //   left: width * 0.03,
                                            // ),
                                            height: height * 0.06,
                                            width: width * 0.3,
                                            decoration: new BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  new BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(10.0),
                                                topRight:
                                                    const Radius.circular(10.0),
                                                bottomLeft:
                                                    const Radius.circular(10.0),
                                                bottomRight:
                                                    const Radius.circular(10.0),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "1:30 Hrs",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "4",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "5",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "6",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "7",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "8",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "9",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            ".",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.cancel_schedule_send,
                                            color: Colors.grey.shade600,
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.04,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: height * 0.07,
                                            width: width * 0.35,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(builder: (context) => home1()),
                                                // );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffF61C7A),
                                                shape:
                                                    new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Text(
                                                "CANCEL",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.07,
                                            width: width * 0.35,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          orders()),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1B74E6),
                                                shape:
                                                    new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Text(
                                                "DONE",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: height * 0.02,
                      ),
                      height: height * 0.08,
                      width: width * 0.4,
                      decoration: new BoxDecoration(
                        color: Color(0xff333536),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "1:30:00 Hrs",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.04,
                ),
                height: height * 0.4,
                width: width * 0.95,
                child: charts.BarChart(
                  _seriesData,
                  animate: true,
                  barGroupingType: charts.BarGroupingType.grouped,
                  animationDuration: Duration(seconds: 3),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: SingleChildScrollView(
                                child: Container(
                                  height: height * 0.9,
                                  width: width * 0.8,
                                  color: Color(0xff333536),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: width * 0.04,
                                              top: height * 0.02,
                                            ),
                                            child: Icon(
                                              Icons.clear,
                                              color: Colors.grey.shade200,
                                              size: 15.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Trade Stop When Balance Reached",
                                            style: TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      CheckboxListTile(
                                        activeColor: Colors.blue,
                                        title: Container(
                                          margin: EdgeInsets.only(
                                            top: height * 0.02,
                                            left: width * 0.03,
                                          ),
                                          height: height * 0.08,
                                          width: width * 0.4,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10.0),
                                              topRight:
                                                  const Radius.circular(10.0),
                                              bottomLeft:
                                                  const Radius.circular(10.0),
                                              bottomRight:
                                                  const Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "invest.",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15.0,
                                                ),
                                              ),
                                              Text(
                                                "\$1",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        value: checkedValue,
                                        onChanged: (newValue) {
                                          setState(() {
                                            checkedValue = newValue!;
                                          });
                                        },
                                        controlAffinity: ListTileControlAffinity
                                            .leading, //  <-- leading Checkbox
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Text(
                                        "Martingole Strategy",
                                        style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      CheckboxListTile(
                                        activeColor: Colors.blue,
                                        title: Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.4,
                                          ),
                                          child: Text(
                                            "Auto",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        value: checkedValue,
                                        onChanged: (newValue) {
                                          setState(() {
                                            checkedValue = newValue!;
                                          });
                                        },
                                        controlAffinity: ListTileControlAffinity
                                            .leading, //  <-- leading Checkbox
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Multiplier",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.06,
                                            width: width * 0.25,
                                            decoration: new BoxDecoration(
                                              color: Color(0xff17181A),
                                              borderRadius:
                                                  new BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(10.0),
                                                topRight:
                                                    const Radius.circular(10.0),
                                                bottomLeft:
                                                    const Radius.circular(10.0),
                                                bottomRight:
                                                    const Radius.circular(10.0),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "2x",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Step",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.06,
                                            width: width * 0.35,
                                            decoration: new BoxDecoration(
                                              color: Color(0xff17181A),
                                              borderRadius:
                                                  new BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(10.0),
                                                topRight:
                                                    const Radius.circular(10.0),
                                                bottomLeft:
                                                    const Radius.circular(10.0),
                                                bottomRight:
                                                    const Radius.circular(10.0),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "7",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            // margin: EdgeInsets.only(
                                            //   left: width * 0.03,
                                            // ),
                                            height: height * 0.065,
                                            width: width * 0.25,
                                            decoration: new BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  new BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(10.0),
                                                topRight:
                                                    const Radius.circular(10.0),
                                                bottomLeft:
                                                    const Radius.circular(10.0),
                                                bottomRight:
                                                    const Radius.circular(10.0),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "\$1",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * 0.05,
                                          ),
                                          Container(
                                            height: height * 0.03,
                                            width: width * 0.18,
                                            decoration: new BoxDecoration(
                                              color: Color(0xffF61C7A),
                                              borderRadius:
                                                  new BorderRadius.only(
                                                topLeft:
                                                    const Radius.circular(10.0),
                                                topRight:
                                                    const Radius.circular(10.0),
                                                bottomLeft:
                                                    const Radius.circular(10.0),
                                                bottomRight:
                                                    const Radius.circular(10.0),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "DONE",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: width * 0.04,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "4",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "5",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "6",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "7",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "8",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "9",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            ".",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.cancel_schedule_send,
                                            color: Colors.grey.shade600,
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: height * 0.04,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: height * 0.07,
                                            width: width * 0.35,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(builder: (context) => home1()),
                                                // );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xffF61C7A),
                                                shape:
                                                    new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Text(
                                                "CANCEL",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.07,
                                            width: width * 0.35,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          orders()),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                primary: Color(0xff1B74E6),
                                                shape:
                                                    new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              child: Text(
                                                "DONE",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: height * 0.02,
                        left: width * 0.03,
                      ),
                      height: height * 0.08,
                      width: width * 0.45,
                      decoration: new BoxDecoration(
                        color: Color(0xff333536),
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(10.0),
                          topRight: const Radius.circular(10.0),
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "invest.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "\$1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: height * 0.02,
                      right: width * 0.03,
                    ),
                    height: height * 0.08,
                    width: width * 0.45,
                    decoration: new BoxDecoration(
                      color: Color(0xff333536),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          "11:00 AM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.065,
                    width: width * 0.85,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => countdown()),
                        // );
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: SingleChildScrollView(
                                  child: Container(
                                    height: height * 0.9,
                                    width: width * 0.8,
                                    color: Color(0xff333536),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: width * 0.04,
                                                top: height * 0.02,
                                              ),
                                              child: Icon(
                                                Icons.clear,
                                                color: Colors.grey.shade200,
                                                size: 15.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Trade Countdown",
                                              style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 25.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.6,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10.0),
                                              topRight:
                                                  const Radius.circular(10.0),
                                              bottomLeft:
                                                  const Radius.circular(10.0),
                                              bottomRight:
                                                  const Radius.circular(10.0),
                                            ),
                                          ),
                                          child: ListTile(
                                            leading: Icon(
                                              Icons.rectangle_outlined,
                                              size: 25.0,
                                              color: Colors.white,
                                            ),
                                            title: Text(
                                              "1 : 30 Hrs",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.75,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10.0),
                                              topRight:
                                                  const Radius.circular(10.0),
                                              bottomLeft:
                                                  const Radius.circular(10.0),
                                              bottomRight:
                                                  const Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time_outlined,
                                                    size: 25.0,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.02,
                                                  ),
                                                  Text(
                                                    "M1",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Interval",
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    "00 : 01 : 00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.75,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10.0),
                                              topRight:
                                                  const Radius.circular(10.0),
                                              bottomLeft:
                                                  const Radius.circular(10.0),
                                              bottomRight:
                                                  const Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time_outlined,
                                                    size: 25.0,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.02,
                                                  ),
                                                  Text(
                                                    "M2",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Interval",
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    "00 : 01 : 00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.75,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10.0),
                                              topRight:
                                                  const Radius.circular(10.0),
                                              bottomLeft:
                                                  const Radius.circular(10.0),
                                              bottomRight:
                                                  const Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time_outlined,
                                                    size: 25.0,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.02,
                                                  ),
                                                  Text(
                                                    "M3",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Interval",
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    "00 : 01 : 00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.75,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10.0),
                                              topRight:
                                                  const Radius.circular(10.0),
                                              bottomLeft:
                                                  const Radius.circular(10.0),
                                              bottomRight:
                                                  const Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time_outlined,
                                                    size: 25.0,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.02,
                                                  ),
                                                  Text(
                                                    "M4",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Interval",
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    "00 : 01 : 00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.75,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10.0),
                                              topRight:
                                                  const Radius.circular(10.0),
                                              bottomLeft:
                                                  const Radius.circular(10.0),
                                              bottomRight:
                                                  const Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time_outlined,
                                                    size: 25.0,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.02,
                                                  ),
                                                  Text(
                                                    "M5",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Interval",
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    "00 : 01 : 00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        Container(
                                          height: height * 0.07,
                                          width: width * 0.75,
                                          decoration: new BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: new BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(10.0),
                                              topRight:
                                                  const Radius.circular(10.0),
                                              bottomLeft:
                                                  const Radius.circular(10.0),
                                              bottomRight:
                                                  const Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time_outlined,
                                                    size: 25.0,
                                                    color: Colors.white,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.02,
                                                  ),
                                                  Text(
                                                    "M6",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Interval",
                                                    style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    "00 : 01 : 00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: height * 0.06,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              height: height * 0.07,
                                              width: width * 0.35,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(builder: (context) => home1()),
                                                  // );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xffF61C7A),
                                                  shape:
                                                      new RoundedRectangleBorder(
                                                    borderRadius:
                                                        new BorderRadius
                                                            .circular(10.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "CANCEL",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: height * 0.07,
                                              width: width * 0.35,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            profile()),
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xff1B74E6),
                                                  shape:
                                                      new RoundedRectangleBorder(
                                                    borderRadius:
                                                        new BorderRadius
                                                            .circular(10.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "DONE",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffF61C7A),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "Stop",
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff333536),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tonality,
              size: 30.0,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment_outlined,
              size: 30.0,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30.0,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
        selectedIconTheme: IconThemeData(
          color: Colors.blue,
        ),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}
