import 'package:flutter/material.dart';

class GoalComponent extends StatefulWidget {
  int goalStatus;
  String goalTitle;
  String goalSchedule;
  String goalTime;

  GoalComponent({
    this.goalStatus,
    this.goalTitle,
    this.goalSchedule,
    this.goalTime,
  });

  @override
  _GoalComponentState createState() => _GoalComponentState();
}

class _GoalComponentState extends State<GoalComponent> {
  Widget _getStatusIcon() {
    if (widget.goalStatus == 1) {
      return Icon(
        Icons.done,
        color: Colors.greenAccent,
      );
    } else if (widget.goalStatus == 0) {
      return Icon(
        Icons.clear,
        color: Colors.red,
      );
    } else if (widget.goalStatus == 2) {
      return Icon(Icons.cached, color: Colors.blue);
    }
    return Icon(Icons.pending);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 23,
              child: CircleAvatar(
                radius: 19,
                child: _getStatusIcon(),
                backgroundColor: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.goalTitle,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Stack(
                      children: [
                        Text(
                          widget.goalSchedule,
                        ),
                        Positioned(
                          right: 0,
                          child: Text(
                            widget.goalTime,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
