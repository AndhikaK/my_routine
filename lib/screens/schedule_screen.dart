import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final TextEditingController _scheduleTitleController =
      TextEditingController();

  final TextEditingController _scheduleDayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('is this updated?'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return Dialog(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        TextField(
                          controller: _scheduleTitleController,
                        ),
                        TextField(
                          controller: _scheduleDayController,
                        ),
                        TextButton(
                            onPressed: () {
                              print(_scheduleTitleController.value.text);
                              print(_scheduleDayController.value.text);
                            },
                            child: Text('Add Schedule'))
                      ],
                    ),
                  ),
                );
              });
        },
        // onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
