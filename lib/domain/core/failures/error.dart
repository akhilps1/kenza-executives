import 'value_objects.dart/value_failure.dart';

class UnExpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnExpectedValueError(
    this.valueFailure,
  );
  @override
  String toString() {
    const msg =
        "Encountered a Valuefailure at an unrecoverable point. Terminating. ";
    return Error.safeToString('$msg Failure was: $valueFailure');
  }
}

// class UnExpectedHomeError extends Error {
//   final HomeFailure homeFailure;
//   UnExpectedHomeError(
//     this.homeFailure,
//   );
//   @override
//   String toString() {
//     const msg =
//         "Encountered a Valuefailure at an unrecoverable point. Terminating. ";
//     return Error.safeToString('$msg Failure was: $homeFailure');
//   }
// }