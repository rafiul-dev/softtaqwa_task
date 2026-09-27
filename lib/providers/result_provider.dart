import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/result_model.dart';
import '../data/mock_data.dart';

class ResultNotifier extends StateNotifier<List<SemesterResult>> {
  ResultNotifier() : super(mockResults);

  // We could add methods here if we needed to update results, 
  // but for the showcase, we're mainly reading state.
}

final resultProvider = StateNotifierProvider<ResultNotifier, List<SemesterResult>>(
  (ref) => ResultNotifier(),
);

final selectedSemesterIndexProvider = StateProvider<int>((ref) => 1); // Default to latest
