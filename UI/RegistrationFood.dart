import 'package:flutter/material.dart';

class RegistrationFood extends StatefulWidget {
  RegistrationFood({Key? key}) : super(key: key);

  @override
  State<RegistrationFood> createState() => _RegistrationFoodState();
}

class _RegistrationFoodState extends State<RegistrationFood> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      body: Center(
          child: Container(
        // margin: EdgeInsets,
        padding: EdgeInsets.symmetric(horizontal: 43),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "IMAGES/Order Success (1).png",
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Before Enjoying Foodmedia Services"
              "                "
              "Please Register First",
              style: TextStyle(
                  fontSize: 13.0, color: Color.fromRGBO(75, 85, 99, 99)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 75.0,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 14,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.75,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(25.0),
                                    topRight: const Radius.circular(25.0),
                                  ),
                                ),
                                child: DefaultTabController(
                                  length: 2,
                                  child: Scaffold(
                                    appBar: AppBar(
                                        elevation: 0,
                                        backgroundColor: Colors.white,
                                        bottom: TabBar(
                                          indicatorPadding: EdgeInsets.only(
                                              left: 30.0, right: 30.0),
                                          indicatorColor:
                                              Color.fromRGBO(50, 183, 104, 50),
                                          labelColor:
                                              Color.fromRGBO(50, 183, 104, 50),
                                          unselectedLabelColor:
                                              Color.fromRGBO(75, 85, 99, 99),
                                          tabs: [
                                            Tab(
                                                child: Text(
                                              "Create Account",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                            Tab(
                                                child: Text(
                                              "Login",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ],
                                        )),
                                    body: Container(
                                      child: TabBarView(children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              Container(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Full Name",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              TextFormField(
                                                initialValue:
                                                    'Enter Your Full Name',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      75, 85, 99, 99),
                                                ),
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    18.0))),
                                              ),
                                              SizedBox(
                                                height: 20.0,
                                              ),
                                              Container(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Email",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              TextFormField(
                                                initialValue:
                                                    'Eg Yazan.a.saleh@gmail.com',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      75, 85, 99, 99),
                                                ),
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    18.0))),
                                              ),
                                              SizedBox(
                                                height: 20.0,
                                              ),
                                              Container(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  "Password",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              TextFormField(
                                                initialValue: '**** **** ****',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      75, 85, 99, 99),
                                                ),
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    18.0))),
                                              ),
                                              SizedBox(
                                                height: 40.0,
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    14,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: MaterialButton(
                                                    onPressed: () {},
                                                    child: Text("Registration"),
                                                    color: Color.fromRGBO(
                                                        244, 244, 244, 20),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0)),
                                                    focusColor: Color.fromRGBO(
                                                        50, 183, 104, 50)),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 40.0,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 30),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Email",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    initialValue:
                                                        'Eg Yazan.a.saleh@gmail.com',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          75, 85, 99, 99),
                                                    ),
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0))),
                                                  ),
                                                  SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      "Password",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    initialValue:
                                                        '**** **** ****',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          75, 85, 99, 99),
                                                    ),
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0))),
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.of(context).pushReplacementNamed("ForgetPassword");
                                                      },
                                                      child: Text(
                                                        "Forget Password?",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    50,
                                                                    183,
                                                                    104,
                                                                    50),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 40.0,
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            14,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    child: MaterialButton(
                                                        onPressed: () {},
                                                        child: Text("Login"),
                                                        color: Color.fromRGBO(
                                                            244, 244, 244, 20),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18.0)),
                                                        focusColor:
                                                            Color.fromRGBO(50,
                                                                183, 104, 50)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ]),
                                    ),
                                  ),
                                ));
                          });
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 14,
                child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(50, 183, 104, 50)),
                    ),
                    color: Color.fromRGBO(209, 250, 229, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)))),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "By Logging In Or Registerng, You Have Agreed To",
                        style: TextStyle(fontSize: 11.0),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "The Terms And Conditions ",
                              style: TextStyle(
                                  color: Color.fromRGBO(50, 183, 104, 50),
                                  fontSize: 11.0),
                            ),
                          ),
                          Text(
                            "And",
                            style: TextStyle(fontSize: 11.0),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              " Privacy Policy ",
                              style: TextStyle(
                                  color: Color.fromRGBO(50, 183, 104, 50),
                                  fontSize: 11.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
