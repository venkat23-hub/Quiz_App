import 'package:flutter/material.dart';
import 'question.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  bool quizCompleted = false;
  int? selectedAnswerIndex;
  int correctAnswersCount = 0;

  void checkAnswer(int answerIndex) {
    setState(() {
      selectedAnswerIndex = answerIndex;
      if (answerIndex == questions[currentQuestionIndex].correctAnswerIndex) {
        correctAnswersCount++;
        // Proceed to the next question only if the correct answer is selected
        Future.delayed(Duration(seconds: 1), () {
          if (currentQuestionIndex < questions.length - 1) {
            setState(() {
              currentQuestionIndex++;
              selectedAnswerIndex = null; // Reset selection for the next question
            });
          } else {
            setState(() {
              quizCompleted = true; // Quiz completed after answering the last question
            });
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: quizCompleted
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Good Job!'
              '  '
              'Quiz Completed!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // You can add more details or a review of answers here
          ],
        ),
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            questions[currentQuestionIndex].questionText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 19),
          ),
          SizedBox(height: 20),
          // Display answer options dynamically with icons
          ...List.generate(
            questions[currentQuestionIndex].options.length,
                (index) {
              bool isSelected = selectedAnswerIndex != null && selectedAnswerIndex == index;

              return ElevatedButton(
                onPressed: () {
                  checkAnswer(index);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(questions[currentQuestionIndex].options[index]),
                    if (isSelected && index == questions[currentQuestionIndex].correctAnswerIndex)
                      Icon(Icons.check, color: Colors.green),
                  ],
                ),
              );
            },
          ).toList(),
        ],
      ),
    );
  }
}
