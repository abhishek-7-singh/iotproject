import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFF1E1E2C), // Dark background color
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'Hi, $username!',
          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, decoration: TextDecoration.none),
        ),
        backgroundColor: Colors.transparent,
        padding: EdgeInsetsDirectional.zero,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                _buildMainCircularIndicator(),
                SizedBox(height: 20),
                _buildIndividualSensorCards(),
                SizedBox(height: 20),
                _buildIndividualEventLogCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMainCircularIndicator() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            'Vitals',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 12),
          Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                value: 0.21,
                backgroundColor: Colors.grey[800],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                strokeWidth: 6,
              ),
              Text(
                '21%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Functions are working fine!!',
            style: TextStyle(
              color: Colors.green,
              fontSize: 16,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            'Normal conditions',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndividualSensorCards() {
    return Column(
      children: [
        _buildSensorBox('Temperature', '25°C', Icons.thermostat),
        SizedBox(height: 10),
        _buildSensorBox('Humidity', '60%', Icons.water_drop),
        SizedBox(height: 10),
        _buildSensorBox('AQI', '50', Icons.air),
        SizedBox(height: 10),
        _buildSensorBox('Gas Level', 'Low', Icons.gas_meter),
      ],
    );
  }

  Widget _buildSensorBox(String label, String value, IconData icon) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 24),
              SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndividualEventLogCards() {
    return Column(
      children: [
        _buildEventLogBox('Temperature', 'AC turned on'),
        SizedBox(height: 10),
        _buildEventLogBox('Humidity', 'Humidifier turned on'),
        SizedBox(height: 10),
        _buildEventLogBox('Gas Level', 'Air purifier turned off'),
      ],
    );
  }

  Widget _buildEventLogBox(String label, String action) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
          Text(
            action,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
