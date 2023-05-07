import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/util/constants.dart';
import 'package:weather_project/util/settings_view_model.dart';

import 'measurement_button.dart';
import 'save_button.dart';

class SettingsView extends StatelessWidget {
  static const routeName = '/settings-view';
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.settings)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTitle(context),
            const SizedBox(height: 16),
            Container(
              alignment: Alignment.center,
              width: 140,
              height: 40,
              color: Theme.of(context).colorScheme.surface,
              child: Text("Celcius"),
            ),

            const SizedBox(height: 8),
            SaveButton(
                onPressed: (){}),
          ],
        ),
      ),
    );
  }

// BACK UP
/*  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsViewModel(context),
      builder: (context, _) {
        var viewModel = Provider.of<SettingsViewModel>(context, listen: false);
        return Scaffold(
          appBar: AppBar(title: const Text(Constants.settings)),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTitle(context),
                const SizedBox(height: 16),
                Consumer<SettingsViewModel>(
                  builder: (context, viewModel, widget) => MeasurementButton(
                    onTap: viewModel.changeMeasurementUnit,
                    text: viewModel.measurementUnit.toString(),
                  ),
                ),
                const SizedBox(height: 8),
                SaveButton(onPressed: viewModel.saveMeasurementUnit),
              ],
            ),
          ),
        );
      },
    );
  }*/



  Widget buildTitle(BuildContext context) {
    return Text(
      Constants.changeUnitsOfMeasurement,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
