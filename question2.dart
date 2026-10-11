import 'dart:math';

void main() {
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  Map<String, int> studentScores = {};

  Random random = Random();
  for (String student in studentNames) {
    studentScores[student] = random.nextInt(41) + 60;
  }

  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  int totalScore = 0;

  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    totalScore += score;

    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
  }

  double averageScore = totalScore / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");

  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

    switch (score) {
      case >= 90 && <= 100:
        category = "Excellent";
      case >= 80 && < 90:
        category = "Good";
      case >= 70 && < 80:
        category = "Average";
      default:
        category = "Needs Improvement";
    }

    print("$student: $score ($category)");
  }
}
