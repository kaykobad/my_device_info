import 'package:flutter/material.dart';
import 'file:///F:/Projects/Flutter/my_device_info/lib/constants/constants.dart';
import 'file:///F:/Projects/Flutter/my_device_info/lib/screens/info_screen.dart';

class OptionSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _getButton(0, context),
              _getButton(1, context),
              _getButton(2, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getButton(index, context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 60.0),
      child: RaisedButton.icon(
        color: ProjectConstants.buttonColors[index],
        padding: EdgeInsets.all(12.0),
        icon: Icon(
          ProjectConstants.buttonIcons[index],
          color: Colors.white,
          size: 20,
        ),
        label: Text(
          ProjectConstants.buttonLabels[index],
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.0),
            side: BorderSide(color: ProjectConstants.buttonColors[index])
        ),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => InfoScreen(index: index))),
      ),
    );
  }
}
