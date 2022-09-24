import 'package:course_flutter/TestRestApi/ResturantsProvider.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/HomePage2ChildPage.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/JsonImages2.dart';
import 'package:course_flutter/UI/HomePage(1,2,3).dart/JsonImages3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingPage extends StatefulWidget {
  BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final RestaurantProivder restaurantProivder = RestaurantProivder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Color.fromRGBO(50, 183, 104, 30),
        centerTitle: true,
        title: Text(
          'Booking History',
          style: TextStyle(color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(18),
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 23.0),
          margin: EdgeInsets.only(top: 40.0),
          child: FutureBuilder(
            future: restaurantProivder.getSearch(),
            builder: (context, snapshot) {
              return ListView.builder(
                itemCount:
                    restaurantProivder.search.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return DetailRestaurants(typehead1: restaurantProivder.search[index],);
                            },
                          ));
                        },
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.network(
                                  restaurantProivder.search[index].photo.toString()),
                              title: Text(
                                restaurantProivder.search[index].name.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              subtitle: Wrap(
                                direction: Axis.vertical,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color.fromRGBO(50, 183, 104, 50),
                                    size: 15.0,
                                  ),
                                  Text(
                                   restaurantProivder.search[index].location_id.toString(),
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              ),
                              trailing: Container(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) {
                                        return DetailRestaurants(typehead1: restaurantProivder.search[index],);
                                      },
                                    ));
                                  },
                                  child: Text(
                                    "Check",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ));
                },
              );
            },
          )),
    );
  }
}





// Column(
//                       children: [
//                         Row(
//                           children: [
//                             Image.network(
//                                 "${Provider.of<GetFoodImages3>(context).RecievedImages3[index].Imageurl}"),
//                             SizedBox(
//                               height: 15.0,
//                             ),
//                             Container(
//                                 width: MediaQuery.of(context).size.width ,
//                                 padding: EdgeInsets.only(right: 80.0),
//                                 margin: EdgeInsets.only(left: 10.0),
//                                 child: Column(
//                                   //direction: Axis.vertical,
//                                   children: [
//                                     Container(
//                                       alignment: Alignment.topLeft,
//                                       child: Text(
//                                         "${Provider.of<GetFoodImages3>(context).RecievedImages3[index].Name}",
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                         textAlign: TextAlign.start,
//                                       ),
//                                     ),
//                                     Container(
//                                       alignment: Alignment.center,
//                                       padding: EdgeInsets.only(right: 80.0),
//                                       margin: EdgeInsets.only(right: 20.0),
//                                       child: Wrap(
//                                         direction: Axis.vertical,
//                                         children: [
//                                           Icon(
//                                             Icons.location_on,
//                                             color: Color.fromRGBO(
//                                                 50, 183, 104, 50),
//                                             size: 15.0,
//                                           ),
//                                           Text(
//                                             "${Provider.of<GetFoodImages3>(context).RecievedImages3[index].address}",
//                                             style: TextStyle(fontSize: 10.0),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       child: ElevatedButton(
//                                         onPressed: () {},
//                                         child: Text(
//                                           "Check",
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ))
//                           ],
//                         )
//                       ],
//                     ),