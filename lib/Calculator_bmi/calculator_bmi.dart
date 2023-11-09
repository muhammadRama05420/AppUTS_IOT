import 'dart:math';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  Color _textColor = Color(0xffffffff);
  String result() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'Kelebihan berat badan';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'Kekurangan berat badan';
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'Berat badan anda berlebih.\n Lakukan lebih banyak cardio dan diet sehat';
    } else if (_bmi > 18.5) {
      return 'Berat badan anda normal.\n Pertahankan!';
    } else {
      return 'Berat badan anda dibawah rata-rata.\n Coba untuk makan lebih banyak';
    }
  }

  Color getTextColor() {
    if (_bmi >= 25 || _bmi <= 18.5) {
      return Color(0xffffffff);
    } else {
      return Color(0xffffffff);
    }
  }
}
