import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/questionnaire_screen.dart';
import 'package:couldai_user_app/screens/about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MindWell Assessment'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.favorite_border,
                size: 100,
                color: Colors.teal.withOpacity(0.8),
              ),
              const SizedBox(height: 30),
              Text(
                'Welcome to Your Mental Wellness Check-in',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'This brief, confidential assessment is a simple way to reflect on your emotional well-being. It is not a diagnostic tool.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuestionnaireScreen()),
                  );
                },
                child: const Text('Start Assessment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
