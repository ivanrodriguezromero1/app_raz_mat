import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/problem.dart';

class ProblemViewModel extends ChangeNotifier {
  Problem? _problem;

  Problem? get problem => _problem;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> fetchProblem({
    required String uri,
    required String apiKey,
    required String difficulty,
    required String language,
  }) async {
    _isLoading = true;
    notifyListeners();

    final apiUrl = Uri.parse(uri);
    final url = apiUrl.replace(queryParameters: {
      'dificultad': difficulty,
      'idioma': language,
    });

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      final problem = Problem(
        difficulty: data['difficulty'],
        language: data['language'],
        sequence: data['sequence'],
        answer: data['answer'],
        options: List<int>.from(data['options']),
      );

      _problem = problem;
      print(_problem!.difficulty);
      print(_problem!.language);
      print(_problem!.sequence);
      print(_problem!.answer);
      print(_problem!.options);
      _isLoading = false;
      notifyListeners();
    } else {
      throw Exception('Failed to fetch problem');
    }
  }
}

