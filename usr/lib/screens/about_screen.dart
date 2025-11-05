import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About This App'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Purpose of the App',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            SizedBox(height: 10),
            Text(
              'This application is designed to provide a quick and simple way for students to perform a self-check on their mental well-being. By answering a few questions, users can get a score that may help them reflect on their current emotional state.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Text(
              'Important Disclaimer',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            SizedBox(height: 10),
            Text(
              'This assessment is not a diagnostic tool and should not be considered a substitute for professional medical advice, diagnosis, or treatment. The results are intended for informational purposes only.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'If you are experiencing a mental health crisis or have concerns about your well-being, please seek help from a qualified healthcare provider or contact a crisis hotline.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 30),
            Text(
              'Confidentiality',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            SizedBox(height: 10),
            Text(
              'Your responses are completely confidential and are not stored or shared. The calculation is performed on your device.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
