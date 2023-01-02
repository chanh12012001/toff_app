import 'package:flutter/material.dart';

class NotificationModel {
  final String avatarUrl;
  Color? backgroundAvatarColor;
  final String title;
  final String content;
  final String time;

  NotificationModel({
    required this.avatarUrl,
    this.backgroundAvatarColor = const Color.fromARGB(255, 229, 229, 227),
    required this.title,
    required this.content,
    required this.time,
  });
}

final notifications = <NotificationModel>[
  NotificationModel(
    avatarUrl: "assets/images/img_avatar.png",
    backgroundAvatarColor: const Color.fromARGB(255, 237, 229, 204),
    title: "Olive Yew",
    content: "Lorem ipsum dolor sit amet...",
    time: "09:20",
  ),
  NotificationModel(
    avatarUrl: "assets/images/img_avatar.png",
    backgroundAvatarColor: const Color.fromARGB(255, 237, 229, 204),
    title: "Olive Yew",
    content: "Lorem ipsum dolor sit amet...",
    time: "09:20",
  ),
  NotificationModel(
    avatarUrl: "assets/images/img_avatar.png",
    backgroundAvatarColor: const Color.fromARGB(255, 237, 229, 204),
    title: "Olive Yew",
    content: "Lorem ipsum dolor sit amet...",
    time: "09:20",
  ),
];
