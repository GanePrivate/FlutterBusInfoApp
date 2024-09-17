import 'package:flutter/material.dart';

import '../widget/timeTable.dart';
import '../widget/calendar.dart';

// 下のメニューバーに関するクラス
class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '愛工大バス時刻案内',
      home: AllSchedule(title: '全ダイヤ'),
    );
  }
}

// ステートフルウィジェットの為の前処理？
class AllSchedule extends StatefulWidget {
  const AllSchedule({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AllSchedule> createState() => _AllScheduleState();
}

// ↑のやつを継承して実際の処理の中身が書かれたクラス
class _AllScheduleState extends State<AllSchedule> {
  // ステートの初期化
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // バスの運行がある場合
    return Scaffold(
      appBar: AppBar(title: const Text('愛工大バス時刻案内')),
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Container(
            height: 40,
            color: const Color(0xFFF6D6D6),
            child: const Center(
                child: Text(
              '大学行き',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
          Container(
            height: 50,
            color: const Color(0xFFF6D6D6),
            child: const Center(
                child: Text(
              'Aダイヤ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
          createScheduleTableContainer(
              "A1", const Color(0xFFF6D6D6).withOpacity(0.5)),
          Container(
            height: 50,
            color: const Color(0xFFF6D6D6),
            child: const Center(
                child: Text(
              'Bダイヤ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
          createScheduleTableContainer(
              "B1", const Color(0xFFF6D6D6).withOpacity(0.5)),
          Container(
            height: 50,
            color: const Color(0xFFF6D6D6),
            child: const Center(
                child: Text(
              'Cダイヤ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
          createScheduleTableContainer(
              "C1", const Color(0xFFF6D6D6).withOpacity(0.5)),
          Container(
            height: 40,
            color: const Color(0xFF7BD3EA),
            margin: const EdgeInsets.only(top: 50),
            child: const Center(
                child: Text(
              '八草行き',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
          Container(
            height: 50,
            color: const Color(0xFF7BD3EA),
            child: const Center(
                child: Text(
              'Aダイヤ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
          createScheduleTableContainer(
              "A2", const Color(0xFF7BD3EA).withOpacity(0.5)),
          Container(
            height: 50,
            color: const Color(0xFF7BD3EA),
            child: const Center(
                child: Text(
              'Bダイヤ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
          createScheduleTableContainer(
              "B2", const Color(0xFF7BD3EA).withOpacity(0.5)),
          Container(
            height: 50,
            color: const Color(0xFF7BD3EA),
            child: const Center(
                child: Text(
              'Cダイヤ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
          ),
          createScheduleTableContainer(
              "C2", const Color(0xFF7BD3EA).withOpacity(0.5)),

          Container(
            height: 40,
            color: const Color(0xFFF6F7C4),
            margin: const EdgeInsets.only(top: 50),
            child: const Center(
                child: Text(
                  '運行スケジュール',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )),
          ),
          CalendarWidget(),
        ],
      ),
    );
  }
}
