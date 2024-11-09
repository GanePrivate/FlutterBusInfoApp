import 'package:flutter/material.dart';

import '../assets/scheduleCSV.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dateModeMap = _parseCsvData(csvData);
    final calendarData = _organizeDataByMonth(dateModeMap);

    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFF6F7C4).withOpacity(0.5),
        child: Column(
          children: calendarData.entries.map((entry) {
            final year = entry.key.year;
            final month = entry.key.month;
            final days = entry.value;

            return Column(
              children: [
                Text('$year年$month月',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Table(
                  border: TableBorder.all(),
                  children: _buildCalendar(year, month, days),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  // CSV データの文字列をパースして日付とモードのマップを作成する関数
  Map<DateTime, String> _parseCsvData(String csvData) {
    final lines = csvData.trim().split('\n');
    final dateModeMap = <DateTime, String>{};

    for (var line in lines) {
      final parts = line.split(',');
      final date = DateTime.parse(parts[0]);
      final mode = parts.length > 1 ? parts[1] : '';
      dateModeMap[date] = mode;
    }

    return dateModeMap;
  }

  Map<DateTime, List<MapEntry<int, String>>> _organizeDataByMonth(
      Map<DateTime, String> dateModeMap) {
    final calendarData = <DateTime, List<MapEntry<int, String>>>{};

    dateModeMap.forEach((date, mode) {
      final yearMonth = DateTime(date.year, date.month);
      // calendarData に yearMonth の Key がなければ
      // (Datetime : 空のリスト) のデータを追加
      calendarData.putIfAbsent(yearMonth, () => []);
      // 上記で追加したリストに実際に日付と mode のデータを追加
      calendarData[yearMonth]!.add(MapEntry(date.day, mode));
    });

    return calendarData;
  }

  List<TableRow> _buildCalendar(
      int year, int month, List<MapEntry<int, String>> days) {
    final firstDayOfMonth = DateTime(year, month, 1);
    final startDayOfWeek = firstDayOfMonth.weekday % 7; // 月曜日が0、日曜日が6

    final weeks = <TableRow>[];
    var week = List<String>.filled(7, '');

    for (var i = 0; i < startDayOfWeek; i++) {
      week[i] = '';
    }

    for (var dayEntry in days) {
      final day = dayEntry.key;
      final mode = dayEntry.value.isEmpty ? 'なし' : dayEntry.value;
      final currentDate = DateTime(year, month, day);
      week[(currentDate.weekday % 7)] = '$day日\n$mode';

      if (currentDate.weekday % 7 == 6) {
        weeks.add(TableRow(
          children: week
              .map((dayContent) =>
                  TableCell(child: Center(child: Text(dayContent))))
              .toList(),
        ));
        week = List<String>.filled(7, '');
      }
    }

    if (week.any((dayContent) => dayContent.isNotEmpty)) {
      weeks.add(TableRow(
        children: week
            .map((dayContent) =>
                TableCell(child: Center(child: Text(dayContent))))
            .toList(),
      ));
    }

    return [
      TableRow(
        children: ['日', '月', '火', '水', '木', '金', '土']
            .map((day) => TableCell(
                child: Center(
                    child: Text(day,
                        style: TextStyle(fontWeight: FontWeight.bold)))))
            .toList(),
      ),
      ...weeks,
    ];
  }
}
