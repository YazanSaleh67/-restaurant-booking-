import 'package:course_flutter/TestRestApi/RestaurantModel.dart';
import 'package:course_flutter/TestRestApi/ResturantsProvider.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/HomePage2ChildPage.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/JsonImages.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/JsonImages2.dart';
import 'package:course_flutter/UI/SearchDelegate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@override
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final RestaurantProivder restaurantProivder = RestaurantProivder();

  late Future _searchData;
  late PageController Sc;
  void initState() {
    Sc = new PageController();
    _searchData = getSearchData();
    super.initState();
  }

  Future getSearchData() async {
    await restaurantProivder.getSearch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.list_rounded,
                            size: 35.0,
                          )),
                      Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(left: 40.0, top: 5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.green,
                            ),
                            Text("Agrabad 435, Chittagong")
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset("IMAGES/images.jpg"),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                  color: Color.fromRGBO(230, 231, 233, 230),
                  elevation: 1.0,
                  borderRadius: BorderRadius.circular(18.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 1.3,
                      padding: EdgeInsets.symmetric(horizontal: 43.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Row(
                        children: [
                          Container(
                              child: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Color.fromRGBO(156, 163, 175, 50),
                            ),
                            onPressed: () {
                              showSearch(
                                  context: context,
                                  delegate: DataSearchTypeHead());
                            },
                          )),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text(
                              "Search",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(156, 163, 175, 50)),
                            ),
                          )
                        ],
                      )),
                ),
                Container(
                  height: 190.5,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: FutureBuilder(
                    future: Provider.of<GetFoodImages>(context).GetImages(),
                    builder: (context, snapshot) {
                      return ListView.builder(
                        controller: Sc,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: Provider.of<GetFoodImages>(context)
                            .RecievedImages
                            .length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    "${Provider.of<GetFoodImages>(context).RecievedImages[index].Imageurl}",
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              SmoothPageIndicator(
                                controller: Sc,
                                count: Provider.of<GetFoodImages>(context)
                                    .RecievedImages
                                    .length,
                                effect: ScrollingDotsEffect(
                                    activeDotColor: Colors.green.shade700,
                                    dotHeight: 8,
                                    dotWidth: 8,
                                    dotColor: Colors.green.shade100),
                              ),
                            ],
                          );

                          ;
                        },
                      );
                    },
                  ),
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
                                margin: EdgeInsets.only(right: 27),
                                child: Text(
                                  'Today New Arivabe',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  child: Text(
                                'Best of the today food list update',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(137, 144, 158, 137)),
                              )),
                            ]),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 50.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See All',
                              style: TextStyle(
                                  color: Color.fromRGBO(137, 144, 158, 137)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 9.0,
                              color: Color.fromRGBO(137, 144, 158, 137),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                restaurantProivder.isLoading
                    ? const Center(
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: FutureBuilder(
                            future: _searchData,
                            builder: (context, snapshot) {
                              return ListView.builder(
                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                scrollDirection: Axis.horizontal,
                                itemCount: restaurantProivder.search.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                4,
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
                                                    return DetailRestaurants(
                                                        typehead1:
                                                            restaurantProivder
                                                                .search[index]);
                                                  },
                                                ));
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.0),
                                                width: MediaQuery.of(context)
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
                                                        const EdgeInsets.only(
                                                            left: 15.0,
                                                            right: 15.0,
                                                            top: 5.0,
                                                            bottom: 5.0),
                                                    child: Column(
                                                      children: [
                                                        Image.network(
                                                          restaurantProivder
                                                              .search[index]
                                                              .photo
                                                              .toString(),
                                                          fit: BoxFit.contain,
                                                        ),
                                                        SizedBox(
                                                          height: 10.0,
                                                        ),
                                                        Text(
                                                            restaurantProivder
                                                                .search[index]
                                                                .name
                                                                .toString(),
                                                            textAlign: TextAlign
                                                                .center,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.location_on,
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
                                                                      .search[
                                                                          index]
                                                                      .location_id
                                                                      .toString(),
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          10.0),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  maxLines: 1,
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
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  );
                                },
                              );
                            })),
              ],
            ),
          )),
    );
  }
}
