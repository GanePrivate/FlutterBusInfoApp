import 'dart:convert';
import 'package:http/http.dart' as http;

Map<String, Map<int, List<int>>>? _cachedTimeTableData;

Future<Map<String, Map<int, List<int>>>> fetchTimeTableData() async {
  // キャッシュが存在する場合はそれを返す
  if (_cachedTimeTableData != null) {
    return _cachedTimeTableData!;
  }

  final response = await http
      .get(Uri.parse('https://bus-api.bigbell.dev/api/v1/timetableall'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = json.decode(response.body);
    final Map<String, dynamic> timeTables = jsonResponse['timeTables'];

    final timeTableMap = <String, Map<int, List<int>>>{};
    timeTables.forEach((key, value) {
      final scheduleMap = <int, List<int>>{};
      value.forEach((hour, minutes) {
        scheduleMap[int.parse(hour)] =
            minutes != null ? List<int>.from(minutes) : [];
      });
      timeTableMap[key] = scheduleMap;
    });

    // データをキャッシュに保存
    _cachedTimeTableData = timeTableMap;

    return timeTableMap;
  } else {
    throw Exception('Failed to load timetable data');
  }
}
