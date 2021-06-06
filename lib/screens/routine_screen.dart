import 'package:flutter/material.dart';
import 'package:routine/components/goal_component.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({key}) : super(key: key);

  @override
  _RoutineScreenState createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Routine')),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(MediaQuery.of(context).size.width);
          print(MediaQuery.of(context).size.height);
        },
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                          )),
                      Text('Mon, 05/12/2021',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Text(
                    "1:00:00",
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(children: [
                      Text(
                        'Goal Time',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '1:00:00',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(children: [
                      Text(
                        'Achievement',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '100%',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      )
                    ]),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(5),
              child: Container(
                child: Column(
                  children: [
                    GoalComponent(
                      goalStatus: 2,
                      goalTitle: "Playing Genshin",
                      goalSchedule: "Everyday",
                      goalTime: "2:00:00",
                    ),
                    GoalComponent(
                      goalStatus: 1,
                      goalTitle: "Playing Genshin",
                      goalSchedule: "Everyday",
                      goalTime: "2:00:00",
                    ),
                    GoalComponent(
                      goalStatus: 0,
                      goalTitle: "Playing Genshin",
                      goalSchedule: "Everyday",
                      goalTime: "2:00:00",
                    ),
                    GoalComponent(
                      goalStatus: 0,
                      goalTitle: "Playing Genshin",
                      goalSchedule: "Everyday",
                      goalTime: "2:00:00",
                    ),
                    GoalComponent(
                      goalStatus: 0,
                      goalTitle: "Playing Genshin",
                      goalSchedule: "Everyday",
                      goalTime: "2:00:00",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
