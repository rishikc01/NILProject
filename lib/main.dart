import 'package:flutter/material.dart';
import 'position_data.dart';
import 'position_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'NIL Project',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: const Color(0xff32006e),
          elevation: 0,
          shadowColor: Colors.grey.withValues(alpha: 0.3),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children:
                  samplePositions
                      .map(
                        (data) => SizedBox(
                          width: 400,
                          height: 300,
                          child: positionCard(data),
                        ),
                      )
                      .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
