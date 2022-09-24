import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/ImageList2.dart';
import 'package:flutter/material.dart';

class GetFoodImages2 with ChangeNotifier {
  List<ImageList2> RecievedImages2 = [];
  void setImage2(List<ImageList2> recievedimages2) {
    this.RecievedImages2 = recievedimages2;
    //here
    notifyListeners();
    //there
  }

  Future<void> GetImages2() async {
    List<ImageList2> FinalRecievedImages2 = [];
    var firebasefirestoreimage2 =
        FirebaseFirestore.instance.collection("IMAGES2");
    QuerySnapshot<Map<String, dynamic>> response2 =
        await firebasefirestoreimage2.get();
    response2.docs.forEach((element) {
      FinalRecievedImages2.add(ImageList2.fromJson(element.data()));
    });
    setImage2(FinalRecievedImages2);
  }
}
