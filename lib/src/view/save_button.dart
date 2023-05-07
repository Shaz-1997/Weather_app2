import 'package:flutter/material.dart';
import 'package:weather_project/util/constants.dart';



class SaveButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SaveButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child:  Text(
        Constants.save,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
