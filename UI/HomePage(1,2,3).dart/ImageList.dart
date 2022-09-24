import 'dart:ui';

import 'package:flutter/material.dart';

class ImageList {
  String? Imageurl;
  ImageList(this.Imageurl);
  ImageList.fromJson(Map<String, dynamic> json) : Imageurl = json["Imageurl"];
  Map<String?, dynamic> toJson() => {Imageurl: this.Imageurl};
}
