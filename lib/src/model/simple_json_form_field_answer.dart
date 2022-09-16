import 'dart:convert';

import 'package:flutter/foundation.dart';

class SimpleJsonFormFieldAnswer {
  final String key;
  final String title;
  final List<String>? answer;
  SimpleJsonFormFieldAnswer({
    required this.key,
    required this.title,
    this.answer,
  });

  SimpleJsonFormFieldAnswer copyWith({
    String? key,
    String? title,
    List<String>? answer,
  }) {
    return SimpleJsonFormFieldAnswer(
      key: key ?? this.key,
      title: title ?? this.title,
      answer: answer ?? this.answer,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'title': title,
      'answer': answer,
    };
  }

  factory SimpleJsonFormFieldAnswer.fromMap(Map<String, dynamic> map) {
    return SimpleJsonFormFieldAnswer(
      key: map['key'] ?? '',
      title: map['title'] ?? '',
      answer: List<String>.from(map['answer']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SimpleJsonFormFieldAnswer.fromJson(String source) =>
      SimpleJsonFormFieldAnswer.fromMap(json.decode(source));

  @override
  String toString() =>
      'SimpleJsonFormField(key: $key, title: $title, answer: $answer)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SimpleJsonFormFieldAnswer &&
        other.key == key &&
        other.title == title &&
        listEquals(other.answer, answer);
  }

  @override
  int get hashCode => key.hashCode ^ title.hashCode ^ answer.hashCode;
}
