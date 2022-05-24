import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homecounting.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  Container(
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
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: SingleChildScrollView(
                            child: Container(
                              height: height * 0.9,
                              width: width * 0.85,
                              color: Color(0xff333536),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: width * 0.04,
                                          top: height * 0.02,
                                        ),
                                        child: Icon(
                                          Icons.clear,
                                          color: Colors.grey.shade400,
                                          size: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  CheckboxListTile(
                                    activeColor: Colors.blue,
                                    title: Text(
                                      "Auto Pick Trading Pair",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Currencies",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Commodities",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Cryptocurrencies",
                                        style: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) => HomePage()),
                                          // );
                                        },
                                        child: Text(
                                          "Stocks",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: width * 0.11,
                                          top: height * 0.01,
                                        ),
                                        child: Text(
                                          "Indices",
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.7,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                            const Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.03,
                                          ),
                                          child: Text(
                                            "Apple OTC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.03,
                                          ),
                                          child: Text(
                                            "80 %",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.7,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                            const Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.03,
                                          ),
                                          child: Text(
                                            "American Express OTC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.03,
                                          ),
                                          child: Text(
                                            "80 %",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.7,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                            const Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.03,
                                          ),
                                          child: Text(
                                            "Boeing Company OTC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.03,
                                          ),
                                          child: Text(
                                            "80 %",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.7,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                            const Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.03,
                                          ),
                                          child: Text(
                                            "Cisco OTC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.03,
                                          ),
                                          child: Text(
                                            "80 %",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.7,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                            const Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.03,
                                          ),
                                          child: Text(
                                            "Facebook Inc OTC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.03,
                                          ),
                                          child: Text(
                                            "80 %",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.7,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                            const Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.03,
                                          ),
                                          child: Text(
                                            "Intel OTC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.03,
                                          ),
                                          child: Text(
                                            "80 %",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.7,
                                    decoration: new BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: new BorderRadius.only(
                                        topLeft: const Radius.circular(20.0),
                                        topRight: const Radius.circular(20.0),
                                        bottomLeft: const Radius.circular(20.0),
                                        bottomRight:
                                            const Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.03,
                                          ),
                                          child: Text(
                                            "Tesla OTC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.03,
                                          ),
                                          child: Text(
                                            "80 %",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                    left: width * 0.04,
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
                  Container(
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
                                child: Container(
                                  height: height * 0.22,
                                  width: width * 0.4,
                                  color: Color(0xff333536),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: width * 0.65,
                                        ),
                                        child: Icon(
                                          Icons.clear,
                                          size: 20.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Text(
                                        "Start the Bot",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: height * 0.065,
                                            width: width * 0.65,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          counting()),
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
                                                "OKAY!",
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
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff1B74E6),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "START",
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
