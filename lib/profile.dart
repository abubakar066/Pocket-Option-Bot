import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                      left: width * 0.08,
                    ),
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                      right: width * 0.08,
                    ),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Color(0xffF61C7A),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
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
                    width: width * 0.04,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    backgroundImage: AssetImage('images/memoji.png'),
                    radius: 40.0,
                  ),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kitsbase",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "USER ID ",
                            style: TextStyle(
                              color: Color(0xff8198A5),
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "#1045762345",
                            style: TextStyle(
                              color: Color(0xffF61C7A),
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.04,
              ),
              ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.12,
                  decoration: new BoxDecoration(
                    color: Color(0xffF61C7A),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0),
                    ),
                  ),
                  child: Icon(
                    Icons.lock,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Privacy & Policy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.12,
                  decoration: new BoxDecoration(
                    color: Color(0xffF61C7A),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0),
                    ),
                  ),
                  child: Icon(
                    Icons.headphones,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Support",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.12,
                  decoration: new BoxDecoration(
                    color: Color(0xffF61C7A),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0),
                    ),
                  ),
                  child: Icon(
                    Icons.star,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Rate Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.12,
                  decoration: new BoxDecoration(
                    color: Color(0xffF61C7A),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0),
                    ),
                  ),
                  child: Icon(
                    Icons.facebook,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              ListTile(
                leading: Container(
                  height: height * 0.06,
                  width: width * 0.12,
                  decoration: new BoxDecoration(
                    color: Color(0xffF61C7A),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0),
                    ),
                  ),
                  child: Icon(
                    Icons.ondemand_video,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Youtube",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.065,
                    width: width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => home1()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          side: BorderSide(color: Color(0xffF61C7A)),
                        ),
                      ),
                      child: Text(
                        "Log Out",
                        style:
                            TextStyle(color: Color(0xffF61C7A), fontSize: 17.0),
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
