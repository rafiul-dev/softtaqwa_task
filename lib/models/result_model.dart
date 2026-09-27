class CourseGrade {
  final String courseId;
  final String courseName;
  final double creditHours;
  final String grade;
  final double gradePoint;

  const CourseGrade({
    required this.courseId,
    required this.courseName,
    required this.creditHours,
    required this.grade,
    required this.gradePoint,
  });
}

class SemesterResult {
  final String semesterId;
  final String semesterName;
  final List<CourseGrade> courses;

  const SemesterResult({
    required this.semesterId,
    required this.semesterName,
    required this.courses,
  });

  double get semesterGpa {
    if (courses.isEmpty) return 0.0;
    double totalPoints = 0;
    double totalCredits = 0;
    for (var course in courses) {
      totalPoints += course.gradePoint * course.creditHours;
      totalCredits += course.creditHours;
    }
    return totalCredits == 0 ? 0.0 : totalPoints / totalCredits;
  }
}
