import '../models/course.dart';
import 'courses_repository.dart';

class CoursesMockRepository implements CoursesRepository {
  final List<Course> courses = [
    Course(id: 'c1', name: 'HTML'),
    Course(id: 'c2', name: 'Java'),
  ];

  @override
  List<Course> getCourses() {
    return courses;
  }

  @override
  Course getCoursesFor(Course course) {
    return course;
  }

  @override
  void addScore(Course course, CourseScore score) {
    course.addScore(score);
  }
}
