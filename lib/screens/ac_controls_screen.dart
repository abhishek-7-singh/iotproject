import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Control Appliances')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Implement AC control logic
              },
              child: Text('Turn AC ON/OFF'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement humidifier control logic
              },
              child: Text('Turn Humidifier ON/OFF'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement dehumidifier control logic
              },
              child: Text('Turn Dehumidifier ON/OFF'),
            ),
          ],
        ),
      ),
    );
  }
}
