/*import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum TemperatureUnit { celsius, fahrenheit }

final temperatureUnitProvider = StateProvider((ref) => TemperatureUnit.celsius);

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Weather App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Weather App'),
          ),
          body: Consumer(builder: (context, watch, _) {
            final temperatureUnit = watch.state;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Temperature Unit: ${temperatureUnit.toString().split('.').last}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                RadioListTile(
                  title: Text('Celsius'),
                  value: TemperatureUnit.celsius,
                  groupValue: temperatureUnit,
                  onChanged: (value) {
                    context.read(temperatureUnitProvider).state = value;
                  },
                ),
                RadioListTile(
                  title: Text('Fahrenheit'),
                  value: TemperatureUnit.fahrenheit,
                  groupValue: temperatureUnit,
                  onChanged: (value) {
                    context.read(temperatureUnitProvider).state = value;
                  },
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
} */

import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting page'),
      ),
    );
  }
}
