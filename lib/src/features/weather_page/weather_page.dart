import 'package:flutter/material.dart';
import 'package:weather_project/src/constants/app_colors.dart';
import 'package:weather_project/src/favorite_page.dart';
import 'package:weather_project/src/features/weather_page/city_search_box.dart';
import 'package:weather_project/src/features/weather_page/current_weather.dart';
import 'package:weather_project/src/features/weather_page/hourly_weather.dart';
import 'package:weather_project/src/features/weather_page/info_page.dart';
import 'package:weather_project/src/location_page.dart';
import 'package:weather_project/src/setting_page.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key, required this.city}) : super(key: key);
  final String city;

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  int _currentIndex = 0;
  PageController  _pageController = PageController();

  List<Widget> _screens =[
    Mainn(),
    FavoritePage(),
    SettingPage(),
    //LocationPage(),
  ];
  void _onPageChanged(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int i){
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black12,
        /*selectedFontSize: 25,
        unselectedFontSize: 20,*/
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home',
            // backgroundColor: Colors.blue,
          ),
           BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: 'Favorite',

           //   backgroundColor: Colors.yellow,
          ),
           BottomNavigationBarItem(
              icon: Icon(Icons.settings),
            label: 'Setting',
           //  backgroundColor: Colors.blueGrey,
         ),
           /*BottomNavigationBarItem(
            icon: Icon(Icons.location_on_rounded),
            label: 'Location',
            //  backgroundColor: Colors.orangeAccent,
          ),*/




        ],
        onTap: (index) {
          setState(() {
            _currentIndex=index;
          });
        },


      ),
      body: _screens[_currentIndex],


    );
  }
}

class Mainn extends StatelessWidget {
  const Mainn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                   // Text('data',style: TextStyle(fontSize: 40),),
                    HourlyWeather(),
                   // InfoPage(),
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

