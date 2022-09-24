import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 100.0),
      padding: EdgeInsets.symmetric(horizontal: 23.0),
      child: Column(
        children: [
          Container(
            height: 70,
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(18.0),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset("IMAGES/images.jpg"),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      //margin: EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: Text(
                              "Sadek Hossen",
                              style: TextStyle(
                                  color: Color.fromRGBO(55, 65, 81, 55),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Sadekbranding@gmail.com",
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Color.fromRGBO(107, 114, 128, 107)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 70.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Stack(
                            children: <Widget>[
                              Icon(Icons.notifications),
                              Positioned(
                                  left: 16.0,
                                  bottom: 16.0,
                                  child: Icon(
                                    Icons.brightness_1,
                                    color: Colors.red,
                                    size: 9.0,
                                  ))
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: 70.0,
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(18.0),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                child: Row(children: [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 25.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Account settings",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 83.0),
                      child: Icon(Icons.edit))
                ]),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 200.0,
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(18.0),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 25.0, bottom: 5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.sort_by_alpha,
                          size: 25.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Language",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 150.0),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.feedback_outlined,
                          size: 25.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Feedback",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 153.0),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.stars_outlined,
                          size: 25.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Rate us",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 172.0),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_circle_up_outlined,
                          size: 25.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "New version",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 122.0),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 17,
              width: MediaQuery.of(context).size.width / 2.7,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("Onboarding");
                },
                child: Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Color.fromRGBO(235, 70, 70, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                //focusColor: Color.fromRGBO(50, 183, 104, 50)
              ),
            ),
          )
        ],
      ),
    ));
  }
}
