import 'package:flutter/material.dart';

class EventLogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Event Log')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            ListTile(
              title: Text('AC turned ON at 25°C'),
              subtitle: Text('Humidity: 60%'),
            ),
            ListTile(
              title: Text('Air Purifier turned ON at 27°C'),
              subtitle: Text('AQI: 85'),
            ),
            // Add more event logs here
          ],
        ),
      ),
    );
  }
}
