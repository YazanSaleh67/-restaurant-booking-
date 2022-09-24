import 'dart:convert';
import 'package:course_flutter/TestRestApi/Services/DetailServices.dart';
import 'package:course_flutter/TestRestApi/Services/PhotoServices.dart';
import 'package:course_flutter/TestRestApi/Services/ReviewsServices.dart';
import 'package:course_flutter/TestRestApi/Services/SearchServices.dart';
import 'package:course_flutter/TestRestApi/RestaurantModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http/http.dart';

class RestaurantProivder with ChangeNotifier {
  var _isLoading = false;

  get isLoading => _isLoading;

  ///// get type head
  List<Data> _search = <Data>[];
  get search => _search;
  Future<dynamic> getSearch() async {
    _isLoading = true;
    notifyListeners();
    var value = await AppServices.getSearch();
    _search = value!.results!.data!;
    _isLoading = false;
    notifyListeners();
  }

///////////////////////////////////////////////////////
  ///Get Details
  List<Data2> _detail = <Data2>[];
  get detail => _detail;
  Future<void> getDeatil() async {
    _isLoading = true;
    notifyListeners();
    var value = await DetailServices.getDeatil();
    _detail = value!.results!.data!;
    _isLoading = false;
    notifyListeners();
  }

///////////////////////////////////////////////////////
  ///Get Review

  List<Data3> _review = <Data3>[];
  get review => _review;
  Future<void> getReviews(String location_id) async {
    _isLoading = true;
    notifyListeners();
    var value = await ReviewServices.getReviews(location_id);
    _review = value!.results!.data!;
    _isLoading = false;
    notifyListeners();
  }

  ////////////////////////////////////////////
  ///Get Photos
  List<Data4> _photo = <Data4>[];
  get photo => _photo;
  Future<void> getPhotos(String location_id) async {
    _isLoading = true;
    notifyListeners();
    var value = await PhotoServices.getPhotos(location_id);
    _photo = value!.results!.data!;
    _isLoading = false;
    notifyListeners();
  }
}


    
  
 
  










  // Future<List<RestaurantModel>?> GetPost() async {
  //   List<RestaurantModel> FinalReceivedrestaurant = [];
  //   http.Response response = await http
  //       .get(Uri.parse('https://worldwide-restaurants.p.rapidapi.com/search'));
  //   if (response.statusCode == 200) {
  //     var body = jsonDecode(response.body);
  //     List<RestaurantModel> FinalReceivedrestaurant = [];
  //     for (var item in body) {
  //       FinalReceivedrestaurant.add(RestaurantModel.fromJson(item));
  //     }
  //     return FinalReceivedrestaurant;
  //   }
  //   // FinalReceivedrestaurant.addAll(responsebody);
  //   setReceivedrestaurant(FinalReceivedrestaurant);
  //   return null;
  // }

// var headers = {
//   'content-type': 'application/x-www-form-urlencoded',
//   'X-RapidAPI-Key': 'b32a22fd18msh5dc2dc20ec9bae7p16d0d2jsn334207dbb1f4',
//   'X-RapidAPI-Host': 'worldwide-restaurants.p.rapidapi.com'
// };
// var request = http.Request('POST', Uri.parse('https://worldwide-restaurants.p.rapidapi.com/search'));
// request.bodyFields = {
//   'q': 'riyadh',
//   'language': 'en_US',
//   'limit': '30',
//   'currency': 'SAR',
//   'location_id': '293995'
// };
// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }


// List<RestaurantModel> ReceivedRestaurants = [];
//   void setReceivedrestaurant(List<RestaurantModel> receivedrestaurants) {
//     this.ReceivedRestaurants = receivedrestaurants;
//     //here
//     notifyListeners();
//     //there
//   }

//   Future<void> GetPost() async {
//     List<RestaurantProivder> FinalReceivedrestaurant = [];
//     Map<String, String> headers = {
//       'content-type': 'application/x-www-form-urlencoded',
//       'X-RapidAPI-Key': 'b32a22fd18msh5dc2dc20ec9bae7p16d0d2jsn334207dbb1f4',
//       'X-RapidAPI-Host': 'worldwide-restaurants.p.rapidapi.com'
//     };
//     http.Response response = await http.post(
//         Uri.parse('https://worldwide-restaurants.p.rapidapi.com/search'),
//         body: {
//           'q': 'riyadh',
//           'language': 'en_US',
//           'limit': '30',
//           'currency': 'SAR',
//           'location_id': '293995'
//         },
//         headers: headers);
//     int statusCode = response.statusCode;
//     print('This is the statuscode: $statusCode');
//     final responseJson = json.decode(response.body);

//     print(responseJson);
//   }
