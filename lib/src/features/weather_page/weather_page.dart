/*import 'dart:html';*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:geolocator/geolocator.dart';
import 'package:weather_project/src/constants/app_colors.dart';
import 'package:weather_project/src/favorite_page.dart';
import 'package:weather_project/src/features/weather_page/city_search_box.dart';
import 'package:weather_project/src/features/weather_page/current_weather.dart';
import 'package:weather_project/src/features/weather_page/hourly_weather.dart';
import 'package:weather_project/src/features/weather_page/info_page.dart';
import 'package:weather_project/src/location_page.dart';
import 'package:weather_project/src/setting_page.dart';
import 'package:weather_project/src/view/settings_view.dart';
/*import 'package:location/location.dart';
import 'package:geocoder/geocoder.dart';
import 'package:flutter/services.dart';*/

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key, required this.city}) : super(key: key);
  final String city;

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  List<Widget> _screens = [
    // LoadingScreen(),
    Mainn(),
    FavoritePage(),
    SettingsView(),
    LoadingScreen(),
    //SettingPage(),
    //
  ];
  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int i) {
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black12,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_rounded),
            label: 'Location',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _screens[_currentIndex],
    );
  }
}

class Mainn extends StatefulWidget {
  const Mainn({
    Key? key,
  }) : super(key: key);

  @override
  State<Mainn> createState() => _MainnState();
}

class _MainnState extends State<Mainn> {
  /*void getLocation() async {
    *//*LocationPermission permission;
    permission = await Geolocator.requestPermission();*//*
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);

    print(position);
  }*/
  /*getUserLocation() async {//call this async method from whereever you need

   LocationData myLocation;
    String error;
    Location location = Location();
    try {
      myLocation = await location.getLocation();
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        error = 'please grant permission';
        print(error);
      }
      if (e.code == 'PERMISSION_DENIED_NEVER_ASK') {
        error = 'permission denied- please enable it from app settings';
        print(error);
      }
     var myLocation = null;
    }
    var currentLocation = myLocation;
    final coordinates = Coordinates(
        myLocation.latitude, myLocation.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(
        coordinates);
    var first = addresses.first;
    print(' ${first.locality}, ${first.adminArea},${first.subLocality}, ${first.subAdminArea},${first.addressLine}, ${first.featureName},${first.thoroughfare}, ${first.subThoroughfare}');
*/
/*  @override
  void initState() {
    super.initState();
    getUserLocation();
  }*/

  @override
  Widget build(BuildContext context) {
    double? currentPosition;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: AppColors.rainGradient,
              ),
            ),
            child: SafeArea(
              child: SizedBox(
                height: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Spacer(),
                    CitySearchBox(),
                    Spacer(),
                    CurrentWeather(),
                    Spacer(),
                    HourlyWeather(),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

