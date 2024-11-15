import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class SensorDataScreen extends StatefulWidget {
  @override
  _SensorDataScreenState createState() => _SensorDataScreenState();
}

class _SensorDataScreenState extends State<SensorDataScreen> {
  final DatabaseReference _database = FirebaseDatabase.instance.reference();
  double _temperature = 0.0;
  double _humidity = 0.0;
  int _mq2 = 0;
  int _mq135 = 0;

  @override
  void initState() {
    super.initState();
    _fetchSensorData();
  }

  void _fetchSensorData() {
    _database.child("sensorData/temperature").onValue.listen((event) {
      setState(() {
        _temperature = event.snapshot.value as double;
      });
    });
    _database.child("sensorData/humidity").onValue.listen((event) {
      setState(() {
        _humidity = event.snapshot.value as double;
      });
    });
    _database.child("sensorData/mq2").onValue.listen((event) {
      setState(() {
        _mq2 = event.snapshot.value as int;
      });
    });
    _database.child("sensorData/mq135").onValue.listen((event) {
      setState(() {
        _mq135 = event.snapshot.value as int;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Air Quality Monitor')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Temperature: $_temperature °C", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Humidity: $_humidity %", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("MQ2 Value: $_mq2", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("MQ135 Value: $_mq135", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
