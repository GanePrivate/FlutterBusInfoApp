import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'loadAnimation.dart';

class ToYakusaScreen extends StatelessWidget {
  const ToYakusaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '愛工大バス時刻案内',
      home: ToYakusa(title: '八草行き'),
    );
  }
}

// ステートフルウィジェットの為の前処理？
class ToYakusa extends StatefulWidget {
  const ToYakusa({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ToYakusa> createState() => _ToYakusaBusState();
}

// ↑のやつを継承して実際の処理の中身が書かれたクラス
class _ToYakusaBusState extends State<ToYakusa> {
  Map<String, dynamic> nextBusInfo = {};
  Map<String, dynamic> afterNextBusInfo = {};
  bool isLoading = false;

  // Futureで非同期処理
  Future<void> getNextInfo() async {
    while (true) {
      try {
        // Getクエリの発行と実行
        var response = await http.get(Uri.http(
            'bus-api.bigbell.dev', '/api/v1/nextbus', {'offset': '0'}));

        // レスポンスをjson形式にデコードして取得
        var jsonResponse = jsonDecode(response.body);

        // ステートに登録(画面に反映させる)
        if (mounted) {
          setState(() {
            nextBusInfo = jsonResponse;
            isLoading = true;
          });
        }

        // 5秒スリープ
        await Future.delayed(const Duration(seconds: 5));
      } catch (e) {
        debugPrint(e.toString());
      }
    }
  }

  // Futureで非同期処理
  Future<void> getAfterNextInfo() async {
    while (true) {
      try {
        // Getクエリの発行と実行
        var response = await http.get(Uri.http(
            'bus-api.bigbell.dev', '/api/v1/nextbus', {'offset': '1'}));

        // レスポンスをjson形式にデコードして取得
        var jsonResponse = jsonDecode(response.body);

        // ステートに登録(画面に反映させる)
        if (mounted) {
          setState(() {
            afterNextBusInfo = jsonResponse;
            isLoading = true;
          });
        }

        // 5秒スリープ
        await Future.delayed(const Duration(seconds: 5));
      } catch (e) {
        debugPrint(e.toString());
      }
    }
  }

  // ステートの初期化
  @override
  void initState() {
    super.initState();
    getNextInfo();
    getAfterNextInfo();
  }

  @override
  Widget build(BuildContext context) {
    if (!isLoading || nextBusInfo.isEmpty || afterNextBusInfo.isEmpty) {
      // データのロード中はローディングアニメーションを表示
      return createProgressIndicator();
    } else if (nextBusInfo['schedule'] == '') {
      // バスの運行が無い場合
      return Scaffold(
        appBar: AppBar(title: const Text('愛工大バス時刻案内')),
        body: const Scaffold(
          body: Center(
              child: Text('本日バスの運行は\nありません', style: TextStyle(fontSize: 32.0))),
        ),
      );
    } else {
      // バスの運行がある場合
      return Scaffold(
        appBar: AppBar(title: const Text('愛工大バス時刻案内')),
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.only(bottom: 5.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(
                  child: Text(
                '大学→八草',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            const Divider(),
            Container(
              height: 50,
              color: Colors.blue[900],
              child: const Center(
                  child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(bottom: 10.0),
              color: Colors.lightBlue[100],
              child: Center(
                  child: Text(
                '${(nextBusInfo['busState']['IsExist'] && nextBusInfo['nextHourToYakusa'] != -1) || nextBusInfo['busState']['IsFirst'] ? nextBusInfo['nextHourToYakusa'].toString().padLeft(2, '0') : "運行終了"}'
                '${(nextBusInfo['busState']['IsExist'] && nextBusInfo['nextHourToYakusa'] != -1) || nextBusInfo['busState']['IsFirst'] ? ':${nextBusInfo['nextMinuteToYakusa'].toString().padLeft(2, '0')}' : ""}',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            const Divider(),
            Container(
              height: 50,
              color: Colors.pink[900],
              child: const Center(
                  child: Text(
                'After the Next',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
            Container(
              height: 100,
              color: Colors.pink[50],
              child: Center(
                  child: Text(
                '${(afterNextBusInfo['busState']['IsExist'] && afterNextBusInfo['nextHourToYakusa'] != -1) || afterNextBusInfo['busState']['IsFirst'] ? afterNextBusInfo['nextHourToYakusa'].toString().padLeft(2, '0') : "運行終了"}'
                '${(afterNextBusInfo['busState']['IsExist'] && afterNextBusInfo['nextHourToYakusa'] != -1) || afterNextBusInfo['busState']['IsFirst'] ? ':${afterNextBusInfo['nextMinuteToYakusa'].toString().padLeft(2, '0')}' : ""}',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ],
        ),
      );
    }
  }
}
