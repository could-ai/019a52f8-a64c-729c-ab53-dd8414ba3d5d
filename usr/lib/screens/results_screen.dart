import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';

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

  Color _getScoreColor() {
    if (score <= 4) {
      return Colors.green;
    } else if (score <= 9) {
      return Colors.orange;
    } else {
      return Colors.red;
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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Your Score:',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                '$score',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: _getScoreColor()),
              ),
              const SizedBox(height: 30),
              Text(
                _getInterpretation(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: Text(
                  'Disclaimer: This is not a medical diagnosis. If you are concerned about your mental health, please consult a healthcare professional.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Take Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
