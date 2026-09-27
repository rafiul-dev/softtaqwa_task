import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../widgets/routine_day_tab.dart';

class RoutineScreen extends StatelessWidget {
  const RoutineScreen({super.key});

  static const List<String> _days = ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _days.length,
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: TabBar(
              isScrollable: false,
              tabs: _days.map((day) {
                final classCount = mockRoutine[day]?.length ?? 0;
                return Tab(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(day),
                      Text(
                        '$classCount cls',
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: _days.map((day) {
                return RoutineDayTab(
                  entries: mockRoutine[day] ?? [],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
