import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_project/src/constants/app_colors.dart';
import 'package:weather_project/src/favorite_page.dart';
import 'package:weather_project/src/model/favorite_model.dart';

final cityProvider = StateProvider<String>((ref) {
  return 'Italy';
});

class CitySearchBox extends ConsumerStatefulWidget {
  const CitySearchBox({Key? key}) : super(key: key);
  @override
  ConsumerState<CitySearchBox> createState() => _CitySearchRowState();
}

class _CitySearchRowState extends ConsumerState<CitySearchBox> {
  static const _radius = 10.0;

  late final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = ref.read(cityProvider);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // circular radius
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => FavoritePage());
                // },
                child: Icon(
              Icons.favorite_border_rounded,
              size: 28,
            ),
              onTap: (){
                getFavoriteCity
                    .add(MyFavoriteModel(searchCountryName:_searchController.text));
                print(getFavoriteCity.first.searchCountryName);
              }
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextField(
                  controller: _searchController,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_radius),
                          bottomLeft: Radius.circular(_radius)),
                    ),
                  ),
                  // onChanged: get,
                  onSubmitted: (value) {
                    ref.read(cityProvider.state).state = value;

                  }),
            ),
          ),
          InkWell(
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: AppColors.accentColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(_radius),
                  bottomRight: Radius.circular(_radius),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
            onTap: () {
              FocusScope.of(context).unfocus();
              ref.read(cityProvider.state).state = _searchController.text;
              //set
            },
          ),
        ],
      ),
    );
  }
}
