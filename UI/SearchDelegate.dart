import 'package:course_flutter/TestRestApi/RestaurantModel.dart';
import 'package:course_flutter/TestRestApi/ResturantsProvider.dart';
import 'package:flutter/material.dart';

class DataSearchTypeHead extends SearchDelegate<Data> {
  final RestaurantProivder restaurantProivder = RestaurantProivder();
 late  List<Data>_data ;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () {
      query = '' ;
    }, icon: Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
      close(context ,  restaurantProivder.search) ;
    }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(child: Text(''));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    
    List data_ = _data.where((element)=> element.name!.contains(query)).toList();
    return Center(
        child: Container(
      child: FutureBuilder(
        future: restaurantProivder.getSearch(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView.builder(
            itemCount: query == '' ? restaurantProivder.search.length : _data.length ,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title:
                query == '' ?
                 Text('${index}.${restaurantProivder.search[index].name.toString()}'):
                 Text(data_[index]),
                subtitle: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Icon(
                              Icons.location_on,
                              color: Colors.green,
                            ),
                    Text(
                      restaurantProivder.search[index].location_id.toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    
                  ],
                ),
              );
            },
          );
        },
      ),
    ));
  }
}
