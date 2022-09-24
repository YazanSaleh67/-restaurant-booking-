import 'package:course_flutter/TestRestApi/ResturantsProvider.dart';
import 'package:flutter/material.dart';

class TestSuggestionReviewandPhoto extends StatefulWidget {
  TestSuggestionReviewandPhoto({Key? key}) : super(key: key);

  @override
  State<TestSuggestionReviewandPhoto> createState() =>
      _TestSuggestionReviewandPhotoState();
}

class _TestSuggestionReviewandPhotoState
    extends State<TestSuggestionReviewandPhoto> {
  final RestaurantProivder restaurantProivder = RestaurantProivder();
  // late Future _searchReview;
  //  Future getReviewData() async {
  //   await restaurantProivder.getReviews();
  // }
  @override
  // void initState() {
  //   _searchReview = getReviewData();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: restaurantProivder.isLoading
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
                  // future: restaurantProivder.getReviews(),
                  builder: (context, snapshot) {
                    return ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: restaurantProivder.review.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              height: MediaQuery.of(context).size.height / 4,
                              alignment: Alignment.bottomCenter,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () async {},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      width: MediaQuery.of(context).size.width,
                                      height: 200,
                                      child: Material(
                                        elevation: 5.0,
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0,
                                              right: 15.0,
                                              top: 5.0,
                                              bottom: 5.0),
                                          child: Column(
                                            children: [
                                              Image.network(
                                                restaurantProivder
                                                    .review[index].url
                                                    .toString(),
                                                fit: BoxFit.contain,
                                              ),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(
                                                  restaurantProivder
                                                      .review[index].text
                                                      .toString(),
                                                  textAlign: TextAlign.center,
                                                  overflow:
                                                      TextOverflow.ellipsis),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on,
                                                    color: Color.fromRGBO(
                                                        50, 183, 104, 50),
                                                    size: 9.0,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                        restaurantProivder
                                                            .review[index]
                                                            .location_id
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontSize: 10.0),
                                                        textAlign:
                                                            TextAlign.left,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
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
    );
  }
}
