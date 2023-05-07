import 'package:flutter/material.dart';

import 'model/favorite_model.dart';

class FavoritePage extends StatefulWidget {
  bool? isFromHomePage = false;
  FavoritePage({Key? key, this.isFromHomePage}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  void initState() {
    super.initState();
    getFavoriteCity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite page"),
      ),
      body: getFavoriteCity.isEmpty == true || getFavoriteCity == null
          ? Center(
              child: Text(
                'No favorite available',
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: getFavoriteCity.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 30,
                              ),
                              Text(getFavoriteCity[index]
                                  .searchCountryName
                                  .toString()),
                              InkWell(
                                onTap: (){
                                  getFavoriteCity.removeWhere((element) => element.searchCountryName==getFavoriteCity[index].searchCountryName);
                                  setState(() {

                                  });
                                },
                                  child: Icon(
                                Icons.delete,
                                size: 30,
                              )),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
