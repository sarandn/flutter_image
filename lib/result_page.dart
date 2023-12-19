import 'dart:io';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final File imageFile;
  final String description;

  ResultPage({
    required this.result,
    required this.imageFile,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Result'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Upload Result:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                result,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Image.file(
                imageFile,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Description:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate back to the ImageUploadWidget
                  Navigator.pop(context);
                },
                child: Text('Back to Upload'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}