import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late PageController FoodAppcontroller;
  @override
  void initState() {
    FoodAppcontroller = new PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(controller: FoodAppcontroller, children: [
      Center(
        child: Container(
          margin: EdgeInsets.only(top: 200.0),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 43),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "IMAGES/Tracking & Maps.png",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 85.0,
              ),
              Text(
                "Nearby restaurants",
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "You don't have to go far to find a good restaurant,"
                "       "
                'we have provided all the restaurants that is '
                '  '
                "near you",
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(75, 85, 99, 99)),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.only(top: 100.0),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed("RegisterFood");
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Color.fromRGBO(75, 85, 99, 99),
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100.0),
                      child: Column(children: [
                        SmoothPageIndicator(
                          controller: FoodAppcontroller,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              activeDotColor: Colors.green.shade700,
                              dotHeight: 8,
                              dotWidth: 8,
                              dotColor: Colors.green.shade100),
                        )
                      ]),
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 75.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed("RegisterFood");
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.green.shade700,
                            )))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.only(top: 150.0),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 43),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "IMAGES/Order illustration.png",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Select the Favorites Menu",
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Now eat well, don't leave the house.You can  "
                "                       "
                'choose your favorite food only with                      '
                '  '
                "one click",
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(75, 85, 99, 99)),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.only(top: 100.0),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed("RegisterFood");
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Color.fromRGBO(75, 85, 99, 99),
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100.0),
                      child: Column(children: [
                        SmoothPageIndicator(
                          controller: FoodAppcontroller,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              activeDotColor: Colors.green.shade700,
                              dotHeight: 8,
                              dotWidth: 8,
                              dotColor: Colors.green.shade100),
                        )
                      ]),
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 75.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed("RegisterFood");
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.green.shade700,
                            )))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.only(top: 150.0),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 43),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "IMAGES/Safe Food.png",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                "Good food at a cheap price",
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "You can eat at expensive restaurants with affordable price   "
                // "                       "
                // 'choose your favorite food only with                      '
                // '  '
                // "one click",
                ,
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(75, 85, 99, 99)),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.only(top: 110.0),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed("RegisterFood");
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Color.fromRGBO(75, 85, 99, 99),
                              fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100.0),
                      child: Column(children: [
                        SmoothPageIndicator(
                          controller: FoodAppcontroller,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              activeDotColor: Colors.green.shade700,
                              dotHeight: 8,
                              dotWidth: 8,
                              dotColor: Colors.green.shade100),
                        )
                      ]),
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 75.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed("RegisterFood");
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.green.shade700,
                            )))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]));
  }
}
