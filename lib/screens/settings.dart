import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Units'),
              DropdownButton<String>(
                value: 'Imperial',
                onChanged: (String value) {
                  //TODO UPDATE

                },
                items: <String>['Imperial', 'Metric']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
