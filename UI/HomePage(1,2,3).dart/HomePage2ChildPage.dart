import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_flutter/TestRestApi/RestaurantModel.dart';
import 'package:course_flutter/TestRestApi/ResturantsProvider.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/Homepage2ChildDetailPage.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/ImageList2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class DetailRestaurants extends StatefulWidget {
  Data typehead1;
  DetailRestaurants({Key? key, required this.typehead1}) : super(key: key);

  @override
  State<DetailRestaurants> createState() => _DetailRestaurantsState();
}

class _DetailRestaurantsState extends State<DetailRestaurants> {
  final RestaurantProivder restaurantProivder = RestaurantProivder();
  // late Future _searchDetailData;
//  late Future _searchtypeheaddata;
  // late Future _searchrevwies ;
  // Future getDetailData() async {
  //   await restaurantProivder.getDeatil();
  // }

  // Future getTypeheadeData() async {
  //   await restaurantProivder.getTypeHead().toString();
  // }
  // Future getReviews() async{
  //   await restaurantProivder.getReviews();
  // }

  void initState() {
    // _searchDetailData = getDetailData();
    // _searchtypeheaddata = getTypeheadeData();
    // _searchrevwies = getReviews();
    super.initState();
  }

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
        child: Column(
          children: [
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
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(widget.typehead1.name.toString())),
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
                            widget.typehead1.location_id.toString(),
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
                          widget.typehead1.photo1.toString(),
                          fit: BoxFit.cover,
                        )),
                    //
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text(
                        widget.typehead1.description.toString(),
                        maxLines: 4,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width / 1.3,
                      // height: MediaQuery.of(context).size.height / 3,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(right: 89),
                                    child: Text(
                                      'Suggestion',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                      child: Text(
                                    'Best of the today based on review',
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(137, 144, 158, 137)),
                                  )),
                                ]),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 50.0),
                            child: GestureDetector(
                              onTap: () async {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'See All',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(137, 144, 158, 137)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 9.0,
                                    color: Color.fromRGBO(137, 144, 158, 137),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width / 1.3,
                            child: FutureBuilder(
                                future: Future.wait([restaurantProivder.getPhotos(widget.typehead1.location_id.toString()) , restaurantProivder.getReviews(widget.typehead1.location_id.toString())]),
                                builder: (context, snapshot) {
                                  return ListView.builder(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 20.0),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: restaurantProivder.review.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Row(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2,
                                            height:270.0,
                                            alignment: Alignment.bottomCenter,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: () async {
                                                    Navigator.of(context)
                                                        .push(MaterialPageRoute(
                                                      builder: (context) {
                                                        return DetailRestaurant2(
                                                            review:
                                                                restaurantProivder
                                                                        .review[
                                                                    index]);
                                                      },
                                                    ));
                                                  },
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.0),
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 200,
                                                    child: Material(
                                                      elevation: 5.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 15.0,
                                                                right: 15.0,
                                                                top: 5.0,
                                                                bottom: 5.0),
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(10.0),
                                                          child: Column(
                                                            
                                                            children: [
                                                              Image.network(
                                                                  restaurantProivder
                                                                      .photo[
                                                                          index]
                                                                      .images
                                                                      .toString(),
                                                                  fit: BoxFit
                                                                      .scaleDown),
                                                              SizedBox(
                                                                height: 10.0,
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.only(bottom:8.0),
                                                                child: Text(
                                                                    restaurantProivder
                                                                        .review[
                                                                            index]
                                                                        .text
                                                                        .toString(),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis),
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .location_on,
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            50,
                                                                            183,
                                                                            104,
                                                                            50),
                                                                    size: 9.0,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Expanded(
                                                                    child: Text(
                                                                        restaurantProivder
                                                                            .review[
                                                                                index]
                                                                            .location_id
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10.0),
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        maxLines:
                                                                            1,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis),
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  );
                                })),
                    // Material(
                    //   elevation: 20.0,
                    //   borderRadius: BorderRadius.only(
                    //       topLeft: Radius.circular(20.0),
                    //       topRight: Radius.circular(20.0)),
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(
                    //         top: 10.0, bottom: 10.0, left: 90.0, right: 90.0),
                    //     child: Container(
                    //       width: MediaQuery.of(context).size.width,
                    //       child: ElevatedButton(
                    //           child: Text('Booking'), onPressed: () {}),
                    //     ),
                    //   ),
                    // )

                    //      Container(
                    // height: MediaQuery.of(context).size.height / 4.5,
                    // width: MediaQuery.of(context).size.width / 2.5,
                    // child: Material(
                    //     elevation: 5.0,
                    //     borderRadius: BorderRadius.circular(18.0),
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(
                    //           left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                    //       child: Column(
                    //         children: [
                    //           Container(
                    //             padding: EdgeInsets.symmetric(horizontal: 15.0),
                    //             width: MediaQuery.of(context).size.width,
                    //             height: MediaQuery.of(context).size.height / 6,
                    //             alignment: Alignment.center,
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.only(
                    //                     topLeft: Radius.circular(18.0),
                    //                     topRight: Radius.circular(20.0))),
                    //             child: FutureBuilder(
                    //               future: restaurantProivder.getPhotos(),
                    //               builder: (BuildContext context,
                    //                   AsyncSnapshot snapshot) {
                    //                 return ListView.builder(
                    //                   scrollDirection: Axis.horizontal,
                    //                   itemCount: restaurantProivder.photo.length,
                    //                   itemBuilder:
                    //                       (BuildContext context, int index) {
                    //                     return Container(
                    //                       padding: EdgeInsets.symmetric(
                    //                           horizontal: 15.0),
                    //                       width:
                    //                           MediaQuery.of(context).size.width,
                    //                       height: 170.0,
                    //                       alignment: Alignment.center,
                    //                       decoration: BoxDecoration(
                    //                           borderRadius: BorderRadius.only(
                    //                               topLeft: Radius.circular(18.0),
                    //                               topRight:
                    //                                   Radius.circular(20.0)),
                    //                           image: DecorationImage(
                    //                               image: NetworkImage(
                    //                                   restaurantProivder
                    //                                       .photo[index].images
                    //                                       .toString()),
                    //                               fit: BoxFit.contain)),
                    //                     );
                    //                   },
                    //                 );
                    //               },
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     )))
                  ],
                )),

            // FutureBuilder(
            //   future: restaurantProivder.getReviews(),
            //   builder: (BuildContext context, AsyncSnapshot snapshot) {
            //     return Container(
            //       height: MediaQuery.of(context).size.height / 6,
            //       child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: restaurantProivder.review.length,
            //         itemBuilder: (BuildContext context, int index) {
            //           return Container(
            //               child: Row(
            //             children: [
            //               Text(
            //                 restaurantProivder.review[index].text.toString(),
            //                 style: TextStyle(
            //                   color: Color.fromRGBO(50, 183, 104, 50),
            //                 ),
            //               )
            //             ],
            //           ));
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
// Imageurl
// "https://firebasestorage.googleapis.com/v0/b/courseflutter-2b82f.appspot.com/o/FoodImages3%2FPhoto%2001.png?alt=media&token=4c77bad0-885d-4d0c-8d7e-06b4ba236185"
// Name
// "Chicken Biryani"
// address
// "Kazi Deiry , Taiger Pass Chittagong"

class DetailRestaurants1 {
  String? Imageurl;
  String? Name;
  String? address;
  DetailRestaurants1(this.Imageurl, this.Name, this.address);
  DetailRestaurants1.fromJson(Map<String, dynamic> json)
      : Imageurl = json['Imageurl'],
        Name = json['Name'],
        address = json['address'];
  Map<String?, dynamic> toJson() =>
      {Imageurl: this.Imageurl, Name: this.Name, address: this.address};
}

class GetDetailRestaurants1 with ChangeNotifier {
  List<DetailRestaurants1> RecievedDetailRestaurants1 = [];
  void setImage(List<DetailRestaurants1> revieveddetailrestaurant1) {
    this.RecievedDetailRestaurants1 = revieveddetailrestaurant1;
    //here
    notifyListeners();
    //there
  }

  Future<void> GetDetailedRestaurants1() async {
    List<DetailRestaurants1> FinalRecievedDetailRestaurants1 = [];
    var firebasefirestore4 =
        FirebaseFirestore.instance.collection('Detail Restaurants 1');
    QuerySnapshot<Map<String, dynamic>> response4 =
        await firebasefirestore4.get();
    response4.docs.forEach((e) => {
          FinalRecievedDetailRestaurants1.add(
              DetailRestaurants1.fromJson(e.data()))
        });
    setImage(FinalRecievedDetailRestaurants1);
  }
}
