import 'package:flutter/material.dart';

class ChangePassword2 extends StatefulWidget {
  ChangePassword2({Key? key}) : super(key: key);

  @override
  State<ChangePassword2> createState() => _ChangePassword2State();
}

class _ChangePassword2State extends State<ChangePassword2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 23),
        margin: EdgeInsets.only(top: 150.0),
        child: Center(
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Change New Password",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter a different password with the pervious",
                  style: TextStyle(
                      fontSize: 15.0, color: Color.fromRGBO(75, 85, 99, 99)),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "New Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  initialValue: '**** **** ****',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 85, 99, 99),
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirm Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  initialValue: '**** **** ****',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 85, 99, 99),
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                ),
              ),
              SizedBox(
                height: 200.0,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 14,
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed("SuccessPaswordChange");
                    },
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
        ),
      ),
    );
  }
}
