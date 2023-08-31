import 'package:flutter/material.dart';

void main() {
  runApp(AlarmClockApp());
}

class AlarmClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm Clock',
      home: AlarmScreen(),
    );
  }
}

class AlarmScreen extends StatefulWidget {
  @override
  _AlarmScreenState createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  String alarmTime = "Set Alarm";

  // Function to set the alarm time.
  void setAlarmTime() {
    // Implement alarm time setting logic here.
    // For example, you can use a time picker.
    // For simplicity, we'll just set it to a fixed time.
    setState(() {
      alarmTime = "07:00 AM"; // Change this to the selected time.
    });
  }

  // Function to cancel the alarm.
  void cancelAlarm() {
    // Implement alarm cancellation logic here.
    setState(() {
      alarmTime = "Set Alarm";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm Clock'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Alarm Time:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              alarmTime,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: setAlarmTime,
              child: Text('Set Alarm'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: cancelAlarm,
              child: Text('Cancel Alarm'),
            ),
          ],
        ),
      ),
    );
  }
}
