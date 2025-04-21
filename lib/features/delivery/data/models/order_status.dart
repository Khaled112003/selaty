import 'package:flutter/material.dart';

class OrderStatus {
  final String title;
  final String subtitle;
  bool isCompleted;
  final IconData icon;

  OrderStatus({
    required this.title,
    required this.subtitle,
    required this.isCompleted,
    required this.icon,
  });
}