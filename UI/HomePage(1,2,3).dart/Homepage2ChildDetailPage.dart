import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_flutter/TestRestApi/RestaurantModel.dart';
import 'package:course_flutter/TestRestApi/ResturantsProvider.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/ImageList2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailRestaurant2 extends StatefulWidget {
  Data3 review;
  DetailRestaurant2({Key? key, required this.review}) : super(key: key);

  @override
  State<DetailRestaurant2> createState() => _DetailRestaurant2State();
}

class _DetailRestaurant2State extends State<DetailRestaurant2> {
  final RestaurantProivder restaurantProivder = RestaurantProivder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (() {
              Navigator.of(context).pop();
            }),
          ),
          toolbarHeight: 55,
          backgroundColor: Color.fromRGBO(50, 183, 104, 30),
          centerTitle: true,
          title: Text(
            'Detail Restaurants',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(18),
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(children: [
              // restaurantProivder.isLoading
              //     ? const Center(
              //         child: SizedBox(
              //           width: 30,
              //           height: 30,
              //           child: CircularProgressIndicator(),
              //         ),
              //       )
              //     :
              Container(
                  height: MediaQuery.of(context).size.height / 1.12,
                  child: Column(children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(widget.review.title.toString())),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color.fromRGBO(50, 183, 104, 50),
                            size: 15.0,
                          ),
                          Text(
                            widget.review.location_id.toString(),
                            style: TextStyle(
                                fontSize: 10.0,
                                color: Color.fromRGBO(107, 114, 128, 107)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18.0),
                                topRight: Radius.circular(20.0))),
                        child: Image.network(
                          widget.review.url1.toString(),
                          fit: BoxFit.fill,
                        )),
                         Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text(
                        widget.review.text.toString(),
                        maxLines: 4,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ]))
            ])));
  }
}
