import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class GoalModel {
  final String goalTitle;
  final String goalSchedule;
  final String goalTime;
  final String goalStatus;
  final String goalCurrentTime;

  GoalModel(
      {this.goalTitle,
      this.goalSchedule,
      this.goalTime,
      this.goalStatus,
      this.goalCurrentTime});
}
