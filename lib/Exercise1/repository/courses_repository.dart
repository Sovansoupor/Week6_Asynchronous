import '../models/course.dart';

abstract class CoursesRepository {
  
  List<Course> getCourses();

  Course getCoursesFor(Course course);

  void addScore(Course course, CourseScore score);
}
