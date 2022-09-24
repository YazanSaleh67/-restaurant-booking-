import 'package:course_flutter/TestRestApi/ResturantsProvider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:async';

class ApiTest2 extends StatefulWidget {
  ApiTest2({Key? key}) : super(key: key);

  @override
  State<ApiTest2> createState() => _ApiTest2State();
}

class _ApiTest2State extends State<ApiTest2> {
  final RestaurantProivder restaurantProivder = RestaurantProivder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () async {},
            child: const Text(
              'Get Data',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: restaurantProivder.isLoading
            ? const Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              )
            : FutureBuilder(
                // future: restaurantProivder.getReviews(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    itemCount: restaurantProivder.review.length,
                    itemBuilder: (context, index) {
                      print(restaurantProivder.review[0]);
                      return Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsetsDirectional.only(bottom: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          children: [
                            Text(
                              restaurantProivder.review[index].text.toString(),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ));
  }
}
