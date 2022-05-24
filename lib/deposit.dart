import 'package:flutter/material.dart';

class deposit extends StatefulWidget {
  const deposit({Key? key}) : super(key: key);

  @override
  State<deposit> createState() => _depositState();
}

class _depositState extends State<deposit> {
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
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Deposit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Choose a payment system for an",
                    style: TextStyle(
                      color: Color(0xff908FEC),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "investment",
                    style: TextStyle(
                      color: Color(0xff908FEC),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "-  -  -  -  -  -  -  -  -  -  -  -  ",
                    style: TextStyle(
                      color: Color(0xff8EE04E),
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    "CARDS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  -  -  -  -  -  -  -  -  -  -  -  -",
                    style: TextStyle(
                      color: Color(0xff8EE04E),
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                height: height * 0.08,
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
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: height * 0.005),
                    child: Image(
                      image: AssetImage("images/visa.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Visa Card",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.08,
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
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: height * 0.005),
                    child: Image(
                      image: AssetImage("images/master.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Master Card",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "-  -  -  -  -  -  -  -  -  -  -  -  ",
                    style: TextStyle(
                      color: Color(0xff8EE04E),
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    "BANK",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  -  -  -  -  -  -  -  -  -  -  -  -",
                    style: TextStyle(
                      color: Color(0xff8EE04E),
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                height: height * 0.08,
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
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: height * 0.005),
                    child: Image(
                      image: AssetImage("images/internet.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Internet Banking",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.08,
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
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: height * 0.005),
                    child: Image(
                      image: AssetImage("images/bank.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Bank Transfer",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "-  -  -  -  -  -  -  ",
                    style: TextStyle(
                      color: Color(0xff8EE04E),
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    "CRYPTO CURRENCY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  -  -  -  -  -  -  -",
                    style: TextStyle(
                      color: Color(0xff8EE04E),
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                height: height * 0.08,
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
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: height * 0.005),
                    child: Image(
                      image: AssetImage("images/binance.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Binance Pay",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.08,
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
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: height * 0.005),
                    child: Image(
                      image: AssetImage("images/binance.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    "Binance Pay",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
