import 'package:flutter/material.dart';

class ImageList2 {
  String? Imageurl;
  String? Name;
  String? address;
  ImageList2(this.Imageurl, this.Name, this.address);
  ImageList2.fromJson(Map<String, dynamic> json)
      : Imageurl = json["Imageurl"],
        Name = json["Name"],
        address = json["address"];
  Map<String?, dynamic> toJson() =>
      {Imageurl: this.Imageurl, Name: this.Name, address: this.address};
}
