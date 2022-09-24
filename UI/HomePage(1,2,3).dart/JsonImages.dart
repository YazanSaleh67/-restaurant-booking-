import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/ImageList.dart';
import 'package:flutter/material.dart';
import'package:firebase_storage/firebase_storage.dart';
class GetFoodImages with ChangeNotifier{
 List<ImageList> RecievedImages = [];
 
  void setImage(List<ImageList> recievedimages) {
    this.RecievedImages = recievedimages;
    //here
    notifyListeners();
    //there
  }
 Future<void> GetImages()async{
  List<ImageList>FinalRecievedImages = [] ;
  var firebasefirestoreimage = FirebaseFirestore.instance.collection("Images");
  QuerySnapshot<Map<String, dynamic>> response = await firebasefirestoreimage.get();
   response.docs.forEach((e) => {FinalRecievedImages.add(ImageList.fromJson(e.data()))});
   setImage(FinalRecievedImages);

    
  
  }
   
}