// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_0008/model/user.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_0008/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {

    String jsonUserData =
        "{\"users\":[{\"name\":\"p1\",\"assets_name\":\"assets\/icons\/icon_user.jpg\", \"id\": \"100\"},"
        "{\"name\":\"p1\",\"assets_name\":\"assets\/icons\/icon_user.jpg\"},{\"name\":\"p1\",\"assets_name\":\"assets\/icons\/icon_user.jpg\"},"
        "{\"name\":\"p1\",\"assets_name\":\"assets\/icons\/icon_user.jpg\"},{\"name\":\"p1\",\"assets_name\":\"assets\/icons\/icon_user.jpg\"}]}";

    List<User> _users =[];

    Map data = json.decode(jsonUserData);

    (data['users'] as List).forEach((element) {
      _users.add(User.fromJson(element));
    });

    expect(true, isTrue);
  });
}
