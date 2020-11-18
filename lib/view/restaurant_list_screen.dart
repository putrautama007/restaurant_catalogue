import 'package:flutter/material.dart';
import 'package:restaurant_catalogue/model/restaurant_data.dart';
import 'package:restaurant_catalogue/view/detail_restaurant_screen.dart';

class RestaurantListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Restaurant Catalogue",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: RestaurantData.restaurantList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.5),
                    blurRadius: 1.0,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailRestaurantScreen(
                        restaurant: RestaurantData.restaurantList[index],
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Hero(
                      tag: RestaurantData.restaurantList[index].restaurantName,
                      child: Material(
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                            RestaurantData
                                .restaurantList[index].restaurantImage,
                            height: 100,
                            width: 125,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              RestaurantData
                                  .restaurantList[index].restaurantName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 16.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.monetization_on,
                                    color: Colors.green,
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      RestaurantData.restaurantList[index]
                                          .restaurantFoodPrices,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black54,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      RestaurantData.restaurantList[index]
                                          .restaurantRating,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black54,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
