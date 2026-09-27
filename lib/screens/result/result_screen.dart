import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/result_provider.dart';
import '../../widgets/grade_card.dart';
import '../../widgets/cgpa_bar_chart.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(resultProvider);
    final selectedIndex = ref.watch(selectedSemesterIndexProvider);
    final theme = Theme.of(context);

    if (results.isEmpty) {
      return const Center(child: Text('No results available.'));
    }

    final selectedSemester = results[selectedIndex];
    final semesterGpa = selectedSemester.semesterGpa;

    // Calculate mathematically correct weighted CGPA
    final double totalCredits = results.expand((s) => s.courses).fold(0.0, (sum, c) => sum + c.creditHours);
    final double totalPoints = results.expand((s) => s.courses).fold(0.0, (sum, c) => sum + (c.gradePoint * c.creditHours));
    final double overallCgpa = totalCredits == 0 ? 0.0 : totalPoints / totalCredits;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CGPA Overview Card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [theme.colorScheme.primary, theme.colorScheme.primary.withOpacity(0.8)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.primary.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overall CGPA',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      overallCgpa.toStringAsFixed(2),
                      style: theme.textTheme.headlineLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.emoji_events,
                  size: 48,
                  color: Colors.amber.shade400,
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Chart
          CgpaBarChart(results: results),
          
          const SizedBox(height: 24),
          
          // Semester Selector
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Semester Grades',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                    value: selectedIndex,
                    icon: Icon(Icons.arrow_drop_down, color: theme.colorScheme.primary),
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                    onChanged: (int? newValue) {
                      if (newValue != null) {
                        ref.read(selectedSemesterIndexProvider.notifier).state = newValue;
                      }
                    },
                    items: List.generate(results.length, (index) {
                      return DropdownMenuItem<int>(
                        value: index,
                        child: Text(results[index].semesterName),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // Semester GPA
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Semester GPA:',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                  ),
                ),
                Text(
                  semesterGpa.toStringAsFixed(2),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Grade Cards
          ...selectedSemester.courses.map((course) => GradeCard(course: course)).toList(),
        ],
      ),
    );
  }
}
