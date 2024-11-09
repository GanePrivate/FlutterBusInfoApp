import 'package:flutter/material.dart';
import '../util/fetchTimeTable.dart';

Widget createScheduleTableContainer(String schedule, Color color) {
  final scheduleMap = {
    "A1": "A_toAIT",
    "B1": "B_toAIT",
    "C1": "C_toAIT",
    "A2": "A_toYakusa",
    "B2": "B_toYakusa",
    "C2": "C_toYakusa",
  };
  schedule = scheduleMap[schedule] ?? schedule;

  return FutureBuilder<Map<String, Map<int, List<int>>>>(
    future: fetchTimeTableData(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}'));
      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
        return const Center(child: Text('No data available'));
      } else {
        final timeTableData = snapshot.data!;
        final scheduleData = timeTableData[schedule] ?? {};

        // minutes が null の物を除外し、時間順にソートする
        final sortedScheduleData = scheduleData.entries
            .where((entry) => entry.value.isNotEmpty)
            .toList()
          ..sort((a, b) => a.key.compareTo(b.key));

        // 0~14時と15~24時のデータを分ける
        final leftColumnData = sortedScheduleData.where((entry) => entry.key <= 14).toList();
        final rightColumnData = sortedScheduleData.where((entry) => entry.key > 14).toList();

        // 右側の列のデータを上から表示するために、最大行数を取得
        final maxRows = leftColumnData.length > rightColumnData.length ? leftColumnData.length : rightColumnData.length;

        return Container(
          color: color,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                        label: Text('時', style: TextStyle(fontSize: 16))),
                    DataColumn(
                        label: Text('分', style: TextStyle(fontSize: 16))),
                    DataColumn(
                        label: Text('時', style: TextStyle(fontSize: 16))),
                    DataColumn(
                        label: Text('分', style: TextStyle(fontSize: 16))),
                  ],
                  rows: List<DataRow>.generate(maxRows, (index) {
                    final leftEntry = index < leftColumnData.length ? leftColumnData[index] : null;
                    final rightEntry = index < rightColumnData.length ? rightColumnData[index] : null;

                    String formatMinutes(List<int> minutes) {
                      final formattedMinutes = minutes.map((minute) => minute.toString().padLeft(2, '0')).toList();
                      if (formattedMinutes.length <= 6) {
                        return formattedMinutes.join(', ');
                      } else {
                        return formattedMinutes.sublist(0, 6).join(', ') + '\n' + formattedMinutes.sublist(6).join(', ');
                      }
                    }

                    return DataRow(
                      cells: <DataCell>[
                        DataCell(Text(leftEntry?.key.toString() ?? '',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                        DataCell(Text(leftEntry != null ? formatMinutes(leftEntry.value) : '')),
                        DataCell(Text(rightEntry?.key.toString() ?? '',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                        DataCell(Text(rightEntry != null ? formatMinutes(rightEntry.value) : '')),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ),
        );
      }
    },
  );
}