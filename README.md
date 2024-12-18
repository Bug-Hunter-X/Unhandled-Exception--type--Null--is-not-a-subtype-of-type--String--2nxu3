# Dart Null Safety and JSON Parsing

This repository demonstrates a common error in Dart when working with JSON data and how to effectively handle potential null values using Dart's null safety features.

The `bug.dart` file contains code that attempts to access nested JSON data without checking for null values. This can lead to runtime exceptions if the expected keys are missing in the JSON response.

The `bugSolution.dart` file provides a corrected version of the code that uses null-aware operators to safely access nested data, preventing exceptions and ensuring robust error handling.