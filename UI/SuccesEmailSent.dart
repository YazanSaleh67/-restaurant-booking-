import 'package:flutter/material.dart';

class SuccessEmailSent extends StatefulWidget {
  SuccessEmailSent({Key? key}) : super(key: key);

  @override
  State<SuccessEmailSent> createState() => _SuccessEmailSentState();
}

class _SuccessEmailSentState extends State<SuccessEmailSent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 300),
          padding: EdgeInsets.symmetric(horizontal: 43.0),
          alignment: Alignment.center,
          child: Center(
            child: Column(
              children: [
                Image.asset("IMAGES/Success Icon.png"),
                Container(
                  child: Text(
                    "Success",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Please check your email for create a new password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(75, 85, 99, 99)),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Can't get email?",
                          style:
                              TextStyle(color: Color.fromRGBO(75, 85, 99, 99)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: InkWell(
                          child: Text(
                            "Resubmit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(50, 183, 104, 50)),
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed("ForgetPassword");
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 90.0,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed("ChangePassword");
                      },
                      child: Text(
                        "Back Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color.fromRGBO(50, 183, 104, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      //focusColor: Color.fromRGBO(50, 183, 104, 50)
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
