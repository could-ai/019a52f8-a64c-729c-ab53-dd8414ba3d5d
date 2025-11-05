import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/question_model.dart';
import 'package:couldai_user_app/screens/results_screen.dart';

class QuestionnaireScreen extends StatefulWidget {
  const QuestionnaireScreen({super.key});

  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  int _currentQuestionIndex = 0;
  final Map<int, int> _selectedAnswers = {};

  void _nextQuestion() {
    if (_currentQuestionIndex < questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _submit();
    }
  }

  void _previousQuestion() {
    if (_currentQuestionIndex > 0) {
      setState(() {
        _currentQuestionIndex--;
      });
    }
  }

  void _submit() {
    int totalScore = 0;
    _selectedAnswers.forEach((key, value) {
      totalScore += questions[key].answers[value].score;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsScreen(score: totalScore),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[_currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${_currentQuestionIndex + 1}/${questions.length}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...List.generate(currentQuestion.answers.length, (index) {
              return RadioListTile<int>(
                title: Text(currentQuestion.answers[index].text),
                value: index,
                groupValue: _selectedAnswers[_currentQuestionIndex],
                onChanged: (value) {
                  setState(() {
                    _selectedAnswers[_currentQuestionIndex] = value!;
                  });
                },
              );
            }),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentQuestionIndex > 0)
                  ElevatedButton(
                    onPressed: _previousQuestion,
                    child: const Text('Previous'),
                  ),
                ElevatedButton(
                  onPressed: _selectedAnswers.containsKey(_currentQuestionIndex) ? _nextQuestion : null,
                  child: Text(_currentQuestionIndex < questions.length - 1 ? 'Next' : 'Finish'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
