import 'package:flutter/material.dart';

class GoalComponent extends StatelessWidget {
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

  Widget _getStatusIcon() {
    if (goalStatus == 1) {
      return Icon(
        Icons.done,
        color: Colors.greenAccent,
      );
    } else if (goalStatus == 0) {
      return Icon(
        Icons.clear,
        color: Colors.red,
      );
    } else if (goalStatus == 2) {
      return Icon(Icons.cached, color: Colors.blue);
    }
    return Icon(Icons.pending);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            child: _getStatusIcon(),
          ),
          Container(
            padding: EdgeInsets.only(left: 9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  goalTitle,
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
                        goalSchedule,
                      ),
                      Positioned(
                        right: 0,
                        child: Text(
                          goalTime,
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
    );
  }
}
