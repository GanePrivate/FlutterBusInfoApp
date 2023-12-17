import 'package:flutter/material.dart';

///画面上にローディングアニメーションを表示する
Widget createProgressIndicator() {
  return const Scaffold(
    body: Center(child: CircularProgressIndicator()),
  );
}