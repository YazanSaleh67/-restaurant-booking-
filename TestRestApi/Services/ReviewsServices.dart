import 'dart:convert';
import 'dart:developer';
import 'package:course_flutter/TestRestApi/RestaurantModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ReviewServices{
  static Future<Review?> getReviews(String location_id)async {
    String url = "https://worldwide-restaurants.p.rapidapi.com/reviews";
    try {
      var request = http.Request('POST', Uri.parse(url));
      var headers = {
        'content-type': 'application/x-www-form-urlencoded',
        'X-RapidAPI-Key': '5da7a2ba2amshf0f0f5a4f10a9ddp128d5ajsn728fc854c50b',
        'X-RapidAPI-Host': 'worldwide-restaurants.p.rapidapi.com',
      };
      request.bodyFields = {
        'currency': 'SAR',
        'language': 'en_US',
        'location_id': location_id ,
        'limit' : '15' ,
      };
      request.headers.addAll(headers);
      //print(response.body);
      http.StreamedResponse response = await request.send();
      // print(response.statusCode);
      print(response.statusCode == 200);
      if (response.statusCode == 200) {
        var result = await http.Response.fromStream(response);
        print('here');
        print(jsonDecode(result.body));
        Review decodedResponse = Review.fromJson(jsonDecode(result.body));
        return decodedResponse;
      } else {
        print('xxxxxxxxxxxxxxx: ${response.reasonPhrase}');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}