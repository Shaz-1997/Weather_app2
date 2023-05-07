/*

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  //Create a variable that contains location
  var locationMessage ="";
  void getCurrentLocation() async{
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  var lastPosition = await Geolocator.getLastKnownPosition();
  print(lastPosition);

  setState(() {
    locationMessage = "$position.latitude  , $position.longitude";
  });
  }
  //Function to get the current location


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 46.0,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Get user location",
              style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black12),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(locationMessage),
            ElevatedButton(
                onPressed: () {
                  getCurrentLocation();
                },
                child: Text(
                  "Get User Location",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    /*LocationPermission permission;
    permission = await Geolocator.requestPermission();*/
    /*Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

    print(position);*/
  }
  @override
  void initState() {

    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {

          },
          child: Text('Get location'),
        ),
      ),
    );
  }
}
