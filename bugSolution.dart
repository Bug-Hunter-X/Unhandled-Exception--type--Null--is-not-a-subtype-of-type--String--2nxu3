```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Safe access to nested data using null-aware operators
      final nestedValue = jsonData['nested']?['data'];
      if (nestedValue != null) {
        print('Data: $nestedValue');
      } else {
        print('Nested data not found.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```