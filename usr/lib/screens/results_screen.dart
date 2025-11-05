import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final int score;

  const ResultsScreen({super.key, required this.score});

  String _getInterpretation() {
    if (score <= 4) {
      return "Your results suggest you are likely in a good mental space. Keep up with your healthy habits!";
    } else if (score <= 9) {
      return "Your results suggest you may be experiencing mild mental health challenges. Consider talking to a friend, family member, or a professional.";
    } else if (score <= 14) {
      return "Your results suggest you may be experiencing moderate mental health challenges. It's recommended to speak with a mental health professional.";
    } else {
      return "Your results suggest you may be experiencing severe mental health challenges. Please seek professional help as soon as possible. You are not alone.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assessment Results'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Your Score:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                '$score',
                style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 30),
              Text(
                _getInterpretation(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text('Take Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
