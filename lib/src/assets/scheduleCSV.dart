import 'dart:convert';
import 'package:http/http.dart' as http;

Map<DateTime, String>? _cachedScheduleData;

Future<Map<DateTime, String>> fetchScheduleData() async {
  // キャッシュが存在する場合はそれを返す
  if (_cachedScheduleData != null) {
    return _cachedScheduleData!;
  }

  final response =
      await http.get(Uri.parse('https://bus-api.bigbell.dev/api/v1/modeall'));

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonResponse = json.decode(response.body);
    final Map<String, dynamic> operationModes = jsonResponse['operationModes'];

    final dateModeMap = <DateTime, String>{};
    operationModes.forEach((key, value) {
      final date = DateTime.parse(value['date']);
      final mode = value['mode'] ?? '';
      dateModeMap[date] = mode;
    });

    // データをキャッシュに保存
    _cachedScheduleData = dateModeMap;

    return dateModeMap;
  } else {
    throw Exception('Failed to load schedule data');
  }
}
