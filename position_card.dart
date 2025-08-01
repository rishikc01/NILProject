import 'package:chrisproj/helpers/pos_to_icon.dart';
import 'package:chrisproj/helpers/pos_to_string.dart';
import 'package:flutter/material.dart';

import 'position_data.dart';

// Color(0xff32006e) purple
// Color(0xffb7a57a) gold
Widget positionCard(PositionWithData data) {
  return Card(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.grey.shade400, width: 0.5),
      borderRadius: BorderRadius.zero,
    ),
    color: const Color(0xFFF5F5F5),
    child: Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            posToString(data.position),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Container(height: 5, color: Color(0xffb7a57a)),
          const SizedBox(height: 8),
          Icon(posToIcon(data.position), size: 60.0, color: Color(0xff4b2e83)),
          const SizedBox(height: 12),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: 1.0),
              borderRadius: BorderRadius.zero,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.zero,
              child: LinearProgressIndicator(
                value: data.donated / data.goal,
                color: const Color(0xff32006e),
                backgroundColor: Colors.white,
                minHeight: 12,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${data.donated / data.goal * 100}% funded',
            style: const TextStyle(fontSize: 12, color: Colors.black),
          ),
          const SizedBox(height: 12),
          TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter donation amount',
              hintStyle: TextStyle(color: Colors.black),
              filled: true,
              fillColor: Colors.white12,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFb7a57a),
              foregroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Donate',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  );
}
