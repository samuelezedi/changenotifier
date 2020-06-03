import 'package:changenotifs/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Units'),
                DropdownButton<String>(
                  value: settingsProvider.unit,
                  onChanged: (String value) {
                    //TODO UPDATE
                    settingsProvider.setUnit(value);
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Wax Lines'),
                Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      FilterChip(
                        label: Text('Swix',
                            style: TextStyle(
                                color: Theme.of(context).accentColor)),
                        selected: (settingsProvider.waxLines.contains('Swix')) ? true : false,
                        onSelected: (bool value) {
                          //TODO
                          if(value){
                            settingsProvider.addWaxLine('Swix');
                          }else{
                            settingsProvider.removeWaxLine('Swix');
                          }
                        },
                      ),
                      FilterChip(
                        label: Text('Toko',
                            style: TextStyle(
                                color: Theme.of(context).accentColor)),
                        selected: (settingsProvider.waxLines.contains('Toko')) ? true : false,
                        onSelected: (bool value) {
                          //TODO
                          if(value){
                            settingsProvider.addWaxLine('Toko');
                          }else{
                            settingsProvider.removeWaxLine('Toko');
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
