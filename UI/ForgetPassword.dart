import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                    "Forget Password",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter your registered email below",
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
                  "Email Address",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  initialValue: 'Eg Yazan.a.saleh@gmail.com',
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
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Remember the password?",
                      style: TextStyle(color: Color.fromRGBO(75, 85, 99, 99)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {},
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(50, 183, 104, 50)),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 300.0,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 14,
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("SuccessEmailSent");
                    },
                    child: Text("Submit"),
                    color: Color.fromRGBO(244, 244, 244, 20),
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
