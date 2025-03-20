import 'package:flutter/material.dart';
import '../repository/courses_mock_repository.dart';
import '../models/course.dart';

class CoursesProvider with ChangeNotifier {
  final List<Course> _courses = CoursesMockRepository().getCourses();
  List<Course> get courses => _courses;

  Course getCourse(String id) =>
      _courses.firstWhere((course) => course.id == id);

  void addScore(String id, CourseScore score) {
    final course = _courses.firstWhere((course) => course.id == id);
    course.scores.add(score);
    notifyListeners();
  }
}
