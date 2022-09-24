import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/ImageList3.dart';
import'package:flutter/material.dart';

class GetFoodImages3 with ChangeNotifier{
List<ImageList3>RecievedImages3 = [] ;
void setImage(List<ImageList3> recievedimages3) {
    this.RecievedImages3 = recievedimages3;
    //here
    notifyListeners();
    //there
  }
   Future<void> GetImages3()async{
  List<ImageList3>FinalRecievedImages3 = [] ;
  var firebasefirestoreimage3 = FirebaseFirestore.instance.collection("Images3");
  QuerySnapshot<Map<String, dynamic>> response3 = await firebasefirestoreimage3.get();
   response3.docs.forEach((e) => {FinalRecievedImages3.add(ImageList3.fromJson(e.data()))});
   setImage(FinalRecievedImages3);

    
  
  }
}