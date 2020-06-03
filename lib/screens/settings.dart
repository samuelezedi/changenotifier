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
          SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Wax Lines'),
                Container(child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    FilterChip(
                      label: Text('Swix',style: TextStyle(color: Theme.of(context).accentColor)),
                      selected: false,
                      onSelected: (bool value) {
                        //TODO
                      },
                    ),
                    FilterChip(
                      label: Text('Toko',style: TextStyle(color: Theme.of(context).accentColor)),
                      selected: true,
                      onSelected: (bool value) {
                        //TODO
                      },
                    ),

                  ],
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
