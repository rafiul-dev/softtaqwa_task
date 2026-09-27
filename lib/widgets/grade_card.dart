import 'package:flutter/material.dart';
import '../models/result_model.dart';

class GradeCard extends StatelessWidget {
  final CourseGrade course;

  const GradeCard({super.key, required this.course});

  Color _getGradeColor(String grade) {
    if (grade.startsWith('A')) return Colors.green.shade600;
    if (grade.startsWith('B')) return Colors.blue.shade600;
    if (grade.startsWith('C')) return Colors.orange.shade600;
    if (grade.startsWith('D')) return Colors.deepOrange.shade600;
    return Colors.red.shade600;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final gradeColor = _getGradeColor(course.grade);

    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Course Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      course.courseId,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    course.courseName,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Credits: ${course.creditHours.toStringAsFixed(1)}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // Grade Info
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: gradeColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                    border: Border.all(color: gradeColor.withOpacity(0.3), width: 2),
                  ),
                  child: Center(
                    child: Text(
                      course.grade,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: gradeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'GP: ${course.gradePoint.toStringAsFixed(2)}',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
