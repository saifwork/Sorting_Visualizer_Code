part of 'algorithm_cubit.dart';

@immutable
class AlgorithmState {
  final AlgorithmExecutionStatus status;
  final Duration executionDelay;
  final AlgorithmType type;
  final List<int> comparisonIndices;
  final int minInt;
  final int maxInt;
  final List<int> integers;

  const AlgorithmState({
    required this.status,
    required this.executionDelay,
    required this.type,
    required this.integers,
    this.minInt = 1,
    this.maxInt = 100,
    this.comparisonIndices = const [],
  });

  AlgorithmState copyWith({
    AlgorithmExecutionStatus? status,
    AlgorithmType? type,
    Duration? executionDelay,
    int? minInt,
    int? maxInt,
    List<int>? integers,
    List<int>? comparisonIndices,
  }) {
    return AlgorithmState(
      status: status ?? this.status,
      executionDelay: executionDelay ?? this.executionDelay,
      type: type ?? this.type,
      integers: integers ?? this.integers,
      minInt: minInt ?? this.minInt,
      maxInt: maxInt ?? this.maxInt,
      comparisonIndices: comparisonIndices ?? this.comparisonIndices,
    );
  }
}