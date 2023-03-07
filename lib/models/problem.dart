class Problem {
  final String difficulty;
  final String language;
  final String sequence;
  final int answer;
  final List<int> options;

  Problem({
    required this.difficulty,
    required this.language,
    required this.sequence,
    required this.answer,
    required this.options,
  });

  factory Problem.fromJson(Map<String, dynamic> json) {
    return Problem(
      difficulty: json['difficulty'],
      language: json['language'],
      sequence: json['sequence'],
      answer: json['answer'],
      options: List<int>.from(json['options']),
    );
  }
}