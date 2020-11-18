import 'package:flutter/material.dart';
import 'package:restaurant_catalogue/model/restauran_model.dart';

class DetailRestaurantScreen extends StatelessWidget {
  final RestaurantModel restaurant;

  DetailRestaurantScreen({this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          restaurant.restaurantName,
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: restaurant.restaurantName,
            child: Material(
              color: Colors.transparent,
              child: Image.network(
                restaurant.restaurantImage,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Text(
              restaurant.restaurantName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.monetization_on,
                  color: Colors.green,
                  size: 24.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    restaurant.restaurantFoodPrices,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black87,
                        fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 24.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    restaurant.restaurantRating,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black87,
                        fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.pin_drop_rounded,
                  color: Colors.red,
                  size: 24.0,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      restaurant.restaurantAddress,
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Text(
              restaurant.restaurantDescription,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
